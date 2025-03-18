using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddMenu : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "";
    public static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = getid();
        TextBox1.Text = uid.ToString();
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(catid),800)+1 from catgeory");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox13.Text == "" || TextBox12.Text == "" || TextBox14.Text == "")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            string stat = "0";

            string str = "insert into catgeory values(" + TextBox1.Text + ",'" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox12.Text + "'," + stat + ")";
            ob.exec(str);
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Green;
            Label11.Text = "Your request has been approved!";
            Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");

        }
    }
}