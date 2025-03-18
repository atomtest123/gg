using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserViewCart : System.Web.UI.Page
{

    DbConnection ob = new DbConnection();
    DbConnection con = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string ftype = "", ipath = "";
    public static string name = "";
    public static int uid;
    public static int uid1;
    DataSet ds = new DataSet();
    double tt = 0.0;
    int q = 0;
    double sum = 0.0;
    public static string id;
    public static string fitems = "";
    public static string p = "";
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
        string cmdstr = "select * from cart where uname='"+name+"'";
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
    protected void Page_Load(object sender, EventArgs e)
    {
       //  Session["uuname"] = "anu123";
         name = Session["uuname"].ToString();
        BindData();
        calculatetotal();
       
    }
    public void calculatetotal()
    {
        sum = 0.0;
        fitems = "";
        ob.dr = ob.ret_dr("select price, nitem,fname from cart where uname='" + name + "'and status=0");
        while (ob.dr.Read())
        {

            tt = Convert.ToInt64(ob.dr[0]);
            q = Convert.ToInt32(ob.dr[1].ToString());
            sum = sum + (tt * q);
            p = ob.dr[2].ToString() + "-" + ob.dr[1].ToString();
            fitems = fitems + ":" + p;
        }
        // long tt1 = tt * q;
        TextBox3.Text = sum.ToString();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        string sss = "delete from cart where cartid=" + id + "";
        ob1.exec(sss);
        calculatetotal();
        BindData();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

       
       
            string stat = "0";

            string str = "insert into fbook values(" + Session["uid"] + ",'" + Session["t1"] + "','" + Session["t7"] + "','" + Session["t5"] + "','" + Session["t4"] + "','" + Session["t6"] + "','" + Session["t8"] + "','" + Session["t10"] + "','" + Session["t9"] + "','" + Session["fitems"] + "','" + TextBox3.Text + "'," + stat + ")";
            ob.exec(str);
           
           
            string sss = "delete from cart";
            ob1.exec(sss);
            BindData();
            double bamount = Convert.ToDouble(TextBox3.Text) / 2;
            Session["bamount"] = bamount;
            Response.Redirect("UserPayament.aspx");
    }
}