using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class HotelAddMenu : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string document2 = "", document3 = "", document4 = "", document21 = "", document31 = "", document41 = "", document22 = "", document32 = "", document42 = "", document23 = "", document33 = "", document43 = "";
    public static int uid;

    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["huname"] = "chikku123";
        uid = getid();
        TextBox1.Text = uid.ToString();
        TextBox12.Text = Session["huname"].ToString();

        if (!IsPostBack)
        {
            DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList8.Items.Insert(1, new ListItem("VEG", "1"));
            DropDownList8.Items.Insert(2, new ListItem("NON VEG", "2"));
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct catname from catgeory");
            while (ob.dr.Read())
            {
                DropDownList7.Items.Add(ob.dr[0].ToString());

            }
            //DropDownList7.Items.Insert(1, new ListItem("Starters", "1"));
            //DropDownList7.Items.Insert(2, new ListItem("Breads", "2"));
            //DropDownList7.Items.Insert(3, new ListItem("Curries", "3"));
            //DropDownList7.Items.Insert(4, new ListItem("Biriyani", "4"));
            //DropDownList7.Items.Insert(5, new ListItem("SeaFoods", "5"));
            //DropDownList7.Items.Insert(6, new ListItem("ChickenItems", "6"));
            //DropDownList7.Items.Insert(7, new ListItem("Juice", "7"));
            //DropDownList7.Items.Insert(8, new ListItem("Desserts", "8"));

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
            document4 = "hfood/" + document3;
            string str = "insert into hmenu values(" + TextBox1.Text + ",'" + DropDownList7.SelectedItem.ToString() + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox12.Text + "','" + document4 + "'," + stat + ",'" + DropDownList8.SelectedItem.ToString() + "')";
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
        ob.dr = ob.ret_dr("select isnull(max(hmid),400)+1 from hmenu");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        try
        {
            document2 = Server.MapPath("~/hfood/" + "/");
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
}