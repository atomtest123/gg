using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserViewHotelMenu2 : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
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
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hmenu where huname='"+DropDownList1.SelectedItem.ToString()+"'";
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
    protected void BindData2()
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hmenu where huname='" + DropDownList1.SelectedItem.ToString() + "' and ftime='"+DropDownList2.SelectedItem.ToString()+"'";
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
    protected void BindData3()
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hmenu";
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
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct huname from hmenu");
            while (ob.dr.Read())
            {
                DropDownList1.Items.Add(ob.dr[0].ToString());

            }
            ob.dr = ob.ret_dr("select distinct ftime from hmenu");
            while (ob.dr.Read())
            {
                DropDownList2.Items.Add(ob.dr[0].ToString());

            }
           // BindData3();
        }
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindData2();

    }
}