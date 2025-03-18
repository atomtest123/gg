using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserBookFood : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection con = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string ftype = "", ipath = "";
    public static int uid;
    public static int uid1;
    DataSet ds = new DataSet();
    double tt = 0.0;
    int q = 0;
    double sum = 0.0;
    public static string id;
    public static string fitems = "";
    public static string p="";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["parkid"] = "501";
        //Session["houname"] = "chikku123";
        //Session["slottime"] = "10AM - 12PM";
        //Session["pdate"] = "18/10/2022";
        //Session["vtype"] = "I Floor";
        //Session["pslot"] = "Slot 3";
        //Session["uname"] = "anu123";
        //Session["table"] = "3";

        TextBox10.Text = Session["vtype"].ToString();
        TextBox8.Text = "Table "+Session["table"].ToString();
        TextBox7.Text = Session["pslot"].ToString();
        TextBox6.Text = Session["uuname"].ToString();
        TextBox5.Text = Session["slottime"].ToString();
        TextBox4.Text = Session["houname"].ToString();
        TextBox1.Text = Session["parkid"].ToString();
        TextBox9.Text = Session["pdate"].ToString();

        if (!IsPostBack)
        {
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct ftype from hmenu where huname='"+TextBox4.Text+"'");
            while (ob.dr.Read())
            {
                DropDownList7.Items.Add(ob.dr[0].ToString());

            }
        }
      
        

    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(cartid),0)+1 from cart");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    public int getid1()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(bookid),600)+1 from fbook");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        uid = getid();
        if (TextBox1.Text == "" || TextBox12.Text == "" || DropDownList7.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string stat = "0";
            fitems=fitems + ":" + DropDownList2.SelectedItem.ToString() + "-" + TextBox2.Text;
            string str = "insert into cart values(" + uid + ",'" + DropDownList2.SelectedItem.ToString() + "','" + ftype + "','" + ipath + "','" + TextBox12.Text + "'," + TextBox2.Text + ",'" + TextBox6.Text + "','" + TextBox4.Text + "'," + stat + ")";
            ob.exec(str);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Your request has been approved!";
            
           
        }
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList1.Items.Clear();
        DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
        ob.dr = ob.ret_dr("select distinct ftime from hmenu where ftype='"+DropDownList7.SelectedItem.ToString()+ "' and huname='"+TextBox4.Text+"'");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
        ob.dr = ob.ret_dr("select distinct fname from hmenu where ftype='" + DropDownList7.SelectedItem.ToString() + "' and ftime='"+DropDownList1.SelectedItem.ToString()+ "' and huname='"+TextBox4.Text+"'");
        while (ob.dr.Read())
        {
            DropDownList2.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
        ob.dr = ob.ret_dr("select * from hmenu where fname='" + DropDownList2.SelectedItem.ToString() + "' and huname='"+TextBox4.Text+"'");
        if (ob.dr.Read())
        {
            TextBox12.Text = ob.dr[4].ToString();
            ftype = ob.dr[8].ToString();
            ipath = ob.dr[6].ToString();

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        uid1 = getid1();
        Session["uid"] = uid1;
        Session["t1"] = TextBox1.Text;
        Session["t7"]=TextBox7.Text;
        Session["t5"] = TextBox5.Text;
        Session["t4"] = TextBox4.Text;
        Session["t6"] = TextBox6.Text;
        Session["t8"] = TextBox8.Text;
        Session["t10"] = TextBox10.Text;
        Session["t9"] = TextBox9.Text;
        Session["fitems"] = fitems;
        Response.Redirect("UserViewCart.aspx");
       
    }
}