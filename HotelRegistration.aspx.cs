using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class HotelRegistration : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static int uid;
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "";
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
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(hid),100)+1 from hreg");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document2 = Server.MapPath("~/hphoto/" + "/");
            if (!Directory.Exists(document2))
                Directory.CreateDirectory(document2);
            if (FileUpload1.HasFile)
            {
                try
                {
                    // document2 = document2 + FileUpload1.FileName.Trim(' ');
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(document2 + TextBox1.Text + extension);
                    document3 = TextBox1.Text + extension;
                }
                catch (Exception ex)
                { }

            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox5.Text == "" || TextBox8.Text == "" || TextBox7.Text == "" || DropDownList7.SelectedItem.ToString() == "Select" || DropDownList8.SelectedItem.ToString() == "Select" || DropDownList9.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {
            document4 = "hphoto/" + document3;
            string dob = DropDownList7.SelectedItem.ToString() + "/" + DropDownList8.SelectedItem.ToString() + "/" + DropDownList9.SelectedItem.ToString();
            string address = TextBox7.Text;
            ob.dr = ob.ret_dr("select username from Login where username='" + TextBox1.Text + "'");
            if (!ob.dr.Read())
            {

                string str = "insert into hreg values(" + uid + ",'" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox14.Text + "','0','0','" + TextBox12.Text + "','" + TextBox10.Text + "','" + dob + "','" + TextBox13.Text + "','" + TextBox11.Text + "',0,'0',0,'"+document4+"')";
                ob.exec(str);
                ob1.exec("insert into Login values(" + uid + ",'" + TextBox1.Text + "','" + TextBox3.Text + "',0)");
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = "";
                TextBox10.Text = "";
                TextBox7.Text = "";
                TextBox11.Text = "";
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