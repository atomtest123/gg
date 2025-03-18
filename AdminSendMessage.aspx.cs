using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminSendMessage : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string suname = "";
    public static string ss = "";

    public string getid()
    {

        ob.dr = ob.ret_dr("select isnull(max(compid),600)+1 from complaint1");
        if (ob.dr.Read())
        {
            ss = ob.dr[0].ToString();
        }
        return ss;
    }
    public void pub()
    {
        DataSet ds = new DataSet();
        try
        {
            string str = "select compid,sub,msg,date1,reply,date2 from complaint1 where status=1 and suname='" + suname + "'";
            ds = pubdoc(str);
            if (ds != null)
            {
                dgdpublic.Visible = true;
                dgdpublic.DataSource = ds;
                dgdpublic.DataBind();
            }
            else
            {
                dgdpublic.Visible = false;
                // ScriptManager.RegisterStartupScript(this, this.GetType(), "message", "alert('No New Message Available');", true);

            }
        }
        catch (Exception ex)
        {
        }
    }
    public DataSet pubdoc(string str)
    {
        DataSet ds = new DataSet();
        try
        {
            ds = ob.ret_ds(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["huname"] = "admin";
        suname = Session["huname"].ToString();

        TextBox2.Text = getid();
        if (!IsPostBack)
        {
            pub();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string runame = TextBox3.Text;
        string sub = TextBox1.Text;
        string mesg = TextBox4.Text;
        string date1 = DateTime.Now.ToShortDateString();
        string reply = "0";
        string date2 = "0";
        int status = 0;

        try
        {

            if (TextBox4.Text == "" || TextBox1.Text == "")
            {
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Red;
                Label11.Text = "Please Enter all fields correctly!";
            }
            else
            {

                ob.exec("insert into complaint1 values(" + TextBox2.Text + ",'" + suname + "','" + runame + "','" + sub + "','" + mesg + "','" + date1 + "','" + reply + "','" + date2 + "','" + status + "')");

                Label11.Visible = true;
                Label11.Text = "Complaint Registered Successfully!";
                TextBox1.Text = "";
                TextBox4.Text = "";
                TextBox2.Text = getid();
            }

        }
        catch (Exception ex)
        {
            Session["err"] = ex.ToString();
            Response.Redirect("error.aspx");
        }

    }
}