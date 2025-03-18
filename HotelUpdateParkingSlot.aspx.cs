using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HotelUpdateParkingSlot : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static string ps="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select psid from PSlot where status=0 and huname='" + Session["huname"] + "'");
            while (ob.dr.Read())
            {
                DropDownList1.Items.Add(ob.dr[0].ToString());

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ps = TextBox2.Text;
        string sss = "update PSlot set tpark=" + ps + " where psid=" + DropDownList1.SelectedItem.ToString() + "";
        ob1.exec(sss);
        Label11.Visible = true;
        Label11.ForeColor = System.Drawing.Color.Green;
        Label11.Text = "Data updated successfully !";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select * from PSlot where psid=" + DropDownList1.SelectedItem.ToString() + " and status=0");
        if (ob.dr.Read())
        {
            TextBox1.Text = ob.dr[1].ToString();
            TextBox12.Text = ob.dr[3].ToString();
            TextBox2.Text = ob.dr[2].ToString();

        }
    }
}