using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassword : System.Web.UI.Page
{

    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string answer = "";
    public static string password1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select squestion, sanswer, pwd from ureg where uname='" + TextBox2.Text + "'");
        //ob1.dr = ob1.ret_dr("select dquestion, danswer, pwd from dregistration where username='" + TextBox2.Text + "'");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[0].ToString();
            answer = ob.dr[1].ToString();
            password1 = ob.dr[2].ToString();
        }
        else
        {
            if (ob1.dr.Read())
            {
                TextBox1.Text = ob1.dr[0].ToString();
                answer = ob1.dr[1].ToString();
                password1 = ob1.dr[2].ToString();
            }
            else
            {
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "Username Not Available";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (answer == TextBox3.Text)
        {
            TextBox4.Text = password1;
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Please provide correct Answer";
        }
    }
}