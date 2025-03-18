using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserOrderHistory : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    public static string huname = "";
    public static double price = 0.0;
    public static string sitem = "";
    public static string huname1 = "", uname = "", bookid = "";
    public static int count = 0;
    public static double trate = 0.0;
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
        string fdate = DateTime.Now.ToShortDateString();
        string cmdstr = "select * from fbook where uuname='" + huname + "'";
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
        
       // Session["uuname"] = "anu123";
        huname=Session["uuname"].ToString();
        if (!IsPostBack)
        {
            TextBox3.Visible = false;
            DropDownList7.Visible = false;
            Button5.Visible = false;
            BindData();
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
        }

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Visible = true;
        DropDownList7.Visible = true;
        Button5.Visible = true;
         id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        ob.dr = ob.ret_dr("select bookid,huname,uuname from fbook where bookid=" + id + "");
        if (ob.dr.Read())
        {
            
            bookid = ob.dr[0].ToString();
            huname1 = ob.dr[1].ToString();
            uname = ob.dr[2].ToString();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "" || DropDownList7.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string stat = "0";
            int id = getid();
            string str = "insert into review values(" + id + ",'" + huname1 + "','" + uname + "','" + TextBox3.Text + "'," + DropDownList7.SelectedItem.ToString() + "," + stat + "," + bookid + ")";
            ob.exec(str);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Your request has been approved!";

            Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
            ob.dr = ob.ret_dr("select count(rating),sum(rating) from review where huname='" + huname1 + "'");
            if (ob.dr.Read())
            {
                count = Convert.ToInt32(ob.dr[0].ToString());
                trate = Convert.ToDouble(ob.dr[1].ToString());

            }
            double crate = trate / count;
            string s1 = "update hreg set rating='"+crate+"',treview="+count+" where  huname='" + huname1 + "'";
            ob1.exec(s1);
            
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(revid),900)+1 from review");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        id = DataList1.DataKeys[DataList1.EditItemIndex].ToString();
        ob.dr = ob.ret_dr("select * from fbook where bookid =" + id + "");
        if (ob.dr.Read())
        {
            Session["bid"] = ob.dr[0].ToString();
            Session["pslot"] = ob.dr[2].ToString();
            Session["timeslot"] = ob.dr[3].ToString();
            Session["huname"] = ob.dr[4].ToString();
            Session["uuname"] = ob.dr[5].ToString();
            Session["ftable"] = ob.dr[6].ToString();
            Session["floor"] = ob.dr[7].ToString();
            Session["fdate"] = ob.dr[8].ToString();
            Session["fitem"] = ob.dr[9].ToString();
            Session["tamount"] = ob.dr[10].ToString();




        }
        Response.Redirect("PeopleCertificate.aspx");
    }
}