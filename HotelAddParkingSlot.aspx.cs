using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HotelAddParkingSlot : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["huname"] = "chikku123";
        uid = getid();
        TextBox1.Text = uid.ToString();
        TextBox12.Text = Session["huname"].ToString();
       
        if (!IsPostBack)
        {
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList7.Items.Insert(1, new ListItem("Two Wheeler", "1"));
            DropDownList7.Items.Insert(2, new ListItem("Four Wheeler", "2"));

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox12.Text == "" || DropDownList7.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string stat = "0";
            string p = "20";
            string str = "insert into PSlot values(" + TextBox1.Text + ",'" + DropDownList7.SelectedItem.ToString() + "'," + TextBox2.Text+ ",'" + TextBox12.Text + "'," + stat + ")";
            ob.exec(str);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Your request has been approved!";
            Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
            
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(psid),200)+1 from PSlot");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}