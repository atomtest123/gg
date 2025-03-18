using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class HomePage1 : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    DbConnection ob2 = new DbConnection();

    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            Response.Write("<script>alert('Fill the fields...............')</script>");
        }
        else
        {
            str = "select * from Login where Username='" + TextBox1.Text + "'";
            ob.dr = ob.ret_dr(str);
            if (ob.dr.Read())
            {
                if (ob.dr[1].ToString() == TextBox2.Text)
                {
                    str = "select status from Login where Username='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
                    ob1.dr = ob1.ret_dr(str);
                    if (ob1.dr.Read())
                    {
                        Session["uname"] = TextBox1.Text;
                        Session["role"] = ob1.dr[0].ToString();
                        if (ob1.dr[0].ToString() == "1")
                        {


                            Session["uuname"] = TextBox1.Text;
                            Response.Redirect("UserHomepage1.aspx");


                        }
                        else if (ob1.dr[0].ToString() == "2")
                        {

                            Session["huname"] = TextBox1.Text;
                            Response.Redirect("HotelHomepage.aspx");


                        }

                        else if (ob1.dr[0].ToString() == "3")
                        {
                            Response.Redirect("AdminHomepage.aspx");

                        }


                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid username or password...')</script>");
                    }
                }
                else
                {
                    //Label1.Text = "Forget ur password...Click Here";
                    //LinkButton1.Visible = true;
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password...')</script>");
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgetPassword.aspx");
    }
}