using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserSearchHotel : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    public static string fname = "", hname = "";
    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }
    int pg = 0;
    protected void BindData()
    {
        CurrentPageIndex = 0;
       // ds.Tables.Clear();
        dt.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hreg where status=1";
        //  string str = "select * from design";
      //  ds = con.ret_ds(cmdstr);
        dt = con.ret_ds1(cmdstr);
     //   pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.DataSource = dt.DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList2.DataSource = pgd;
        DataList2.DataBind();
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        BindData();
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("UserBookParkingSlot.aspx");
    }
}