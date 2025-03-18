using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserHomepage : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    public static string uname = "";
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
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hreg";
        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
    protected void BindData1()
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select Top 5 * from hmenu";
        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
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
        BindData1();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        //id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        //ob.dr = ob.ret_dr("select huname from hmenu where hmid=" + id + "");
        //if (ob.dr.Read())
        //{
        //    uname = ob.dr[0].ToString();
        //}
        //Response.Write("<script type = 'text/javascript'>alert('Working Hours: 9:00 AM to 9:00 PM');</script>");

    }
}