using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class HotelViewBooking : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    public static string huname="";
    public static double price = 0.0;
    public static string sitem = ""; 
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
        string cmdstr = "select * from fbook where fdate='"+fdate+"' and huname='" + huname + "' and status=0";
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
       
        // Session["huname"] = "chikku123";
        huname=Session["huname"].ToString();
        if (!IsPostBack)
        {
            BindData();
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct ftype from hmenu where huname='"+huname+"'");
            while (ob.dr.Read())
            {
                DropDownList7.Items.Add(ob.dr[0].ToString());

            }
          //  DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
          
            //ob.dr = ob.ret_dr("select distinct fdate from fbook where huname='"+huname+"' and status=0");
            //while (ob.dr.Read())
            //{
            //    DropDownList7.Items.Add(ob.dr[0].ToString());

            //}
        }
      
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select distinct ftime from hmenu where ftype='" + DropDownList7.SelectedItem.ToString() + "' and huname='"+huname+"'");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
       
        id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        ob.dr = ob.ret_dr("select fitem,tamount from fbook where bookid=" + id + "");
        if (ob.dr.Read())
        {
            sitem = ob.dr[0].ToString();
            price = Convert.ToDouble(ob.dr[1].ToString());
            string[] values = sitem.Split(':');
            for (int i = 1; i < values.Length; i++)
            {
                TextBox3.Text+= values[i].Trim()+"\n";
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        price = price + (Convert.ToDouble(TextBox12.Text)*Convert.ToDouble(TextBox2.Text));
        sitem = sitem + ":" + DropDownList2.SelectedItem.ToString()+"-"+TextBox2.Text;
        string s1 = "update fbook set fitem='"+sitem+"', tamount="+price+" where bookid=" + id + "";
        ob1.exec(s1);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select distinct fname from hmenu where ftype='" + DropDownList7.SelectedItem.ToString() + "' and ftime='" + DropDownList1.SelectedItem.ToString() + "' and huname='"+huname+"'");
        while (ob.dr.Read())
        {
            DropDownList2.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from hmenu where fname='" + DropDownList2.SelectedItem.ToString() + "' and huname='"+huname+"'");
        if (ob.dr.Read())
        {
            TextBox12.Text = ob.dr[4].ToString();
            //ftype = ob.dr[8].ToString();
            //ipath = ob.dr[6].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox13.Text = "";
        ob.dr = ob.ret_dr("select fitem from fbook where bookid=" + id + "");
        if (ob.dr.Read())
        {
            sitem = ob.dr[0].ToString();
            
            string[] values = sitem.Split(':');
            for (int i = 1; i < values.Length; i++)
            {
                TextBox13.Text += values[i].Trim() + "\n";
            }
        }
    }
}