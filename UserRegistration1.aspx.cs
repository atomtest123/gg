using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserRegistration1 : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = getid();
        TextBox4.Text = uid.ToString();
        for (int i = 1; i <= 31; i++)
        {
            DropDownList7.Items.Add(i.ToString());
        }
        DropDownList7.Items.Insert(0, new ListItem("--DD--", "0"));
        for (int i = 01; i <= 12; i++)
        {
            DropDownList8.Items.Add(i.ToString());
        }
        DropDownList8.Items.Insert(0, new ListItem("--MM--", "0"));
        for (int i = 1950; i <= 2017; i++)
        {
            DropDownList9.Items.Add(i.ToString());
        }
        DropDownList9.Items.Insert(0, new ListItem("--YYYY--", "0"));
        DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
        DropDownList1.Items.Insert(1, new ListItem("What is your first name", "1"));
        DropDownList1.Items.Insert(2, new ListItem("What is your first pets name", "2"));
        DropDownList1.Items.Insert(3, new ListItem("your nickname", "3"));
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(uid),300)+1 from ureg");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox10.Text == "" || TextBox5.Text == "" || TextBox7.Text == "" || DropDownList7.SelectedItem.ToString() == "Select" || DropDownList8.SelectedItem.ToString() == "Select" || DropDownList9.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {

            string dob = DropDownList7.SelectedItem.ToString() + "/" + DropDownList8.SelectedItem.ToString() + "/" + DropDownList9.SelectedItem.ToString();
            string address = TextBox7.Text;
            ob.dr = ob.ret_dr("select username from Login where username='" + TextBox1.Text + "'");
            if (!ob.dr.Read())
            {

                string str = "insert into ureg values(" + uid + ",'" + TextBox1.Text + "','" + TextBox12.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + dob + "',0,'"+DropDownList1.SelectedItem.ToString()+"','"+TextBox8.Text+"')";
                ob.exec(str);
                ob1.exec("insert into Login values(" + uid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "',0)");
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                TextBox5.Text = "";
                TextBox10.Text = "";
                TextBox7.Text = "";

                Response.Redirect("HomePage1.aspx");
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Username Not Available!";
            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}