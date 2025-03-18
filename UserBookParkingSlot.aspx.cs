using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class UserBookParkingSlot : System.Web.UI.Page
{
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    public static int uid;
    ArrayList arslot= new ArrayList();
    ArrayList tslot = new ArrayList();
    ArrayList bslot = new ArrayList();
    public static int slot = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["uuname"] = "anu123";
        uid = getid();
        TextBox1.Text = uid.ToString();
        TextBox12.Text = Session["uuname"].ToString();
        //TextBox3.Text = DateTime.Now.AddDays(2).ToShortDateString();
        TextBox3.Text = DateTime.Now.ToShortDateString();

        if (!IsPostBack)
        {
            DropDownList7.Items.Insert(0, new ListItem("SELECT", "0"));
           // DropDownList8.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList1.Items.Insert(0, new ListItem("SELECT", "0"));
            DropDownList2.Items.Insert(0, new ListItem("SELECT", "0"));
            ob.dr = ob.ret_dr("select distinct huname from PSlot");
            while (ob.dr.Read())
            {
                DropDownList7.Items.Add(ob.dr[0].ToString());

            }
            DropDownList2.Items.Insert(1, new ListItem("1PM ", "1"));
            DropDownList2.Items.Insert(2, new ListItem("2PM", "2"));
            DropDownList2.Items.Insert(3, new ListItem("3PM", "3"));
            DropDownList2.Items.Insert(4, new ListItem("4PM", "4"));
            DropDownList2.Items.Insert(5, new ListItem("5PM", "5"));
            DropDownList2.Items.Insert(6, new ListItem("6PM", "6"));
            DropDownList2.Items.Insert(7, new ListItem("7PM", "7"));
            DropDownList2.Items.Insert(7, new ListItem("8PM", "8"));
            DropDownList2.Items.Insert(7, new ListItem("9PM", "9"));
            DropDownList2.Items.Insert(7, new ListItem("10PM","10"));
            DropDownList2.Items.Insert(7, new ListItem("11PM","11"));
            DropDownList2.Items.Insert(7, new ListItem("12PM","12"));
            DropDownList2.Items.Insert(7, new ListItem("1AM", "13"));
            DropDownList2.Items.Insert(7, new ListItem("2PM", "14"));
            DropDownList2.Items.Insert(7, new ListItem("3AM", "15"));
            DropDownList2.Items.Insert(7, new ListItem("4AM", "16"));
            DropDownList2.Items.Insert(7, new ListItem("5AM", "17"));
            DropDownList2.Items.Insert(7, new ListItem("6AM", "18"));
            DropDownList2.Items.Insert(7, new ListItem("7AM", "19"));
            DropDownList2.Items.Insert(7, new ListItem("8AM", "20"));
            DropDownList2.Items.Insert(7, new ListItem("9AM", "21"));
            DropDownList2.Items.Insert(7, new ListItem("10AM", "22"));
            DropDownList2.Items.Insert(7, new ListItem("11AM", "23"));
            DropDownList2.Items.Insert(7, new ListItem("12AM", "24"));
        }
    }
    public int getid()
    {
        int c = 0;
        ob.dr = ob.ret_dr("select isnull(max(pid),500)+1 from pbook");
        if (ob.dr.Read())
        {
            c = Convert.ToInt32(ob.dr[0].ToString());
        }
        return c;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == ""  || TextBox2.Text == "" || TextBox12.Text == "" || DropDownList7.SelectedItem.ToString() == "Select" || DropDownList2.SelectedItem.ToString() == "Select")
        {
            Label11.Visible = true;
            Label11.ForeColor = System.Drawing.Color.Red;
            Label11.Text = "Please Enter all fields correctly!";
        }
        else
        {




            string str = "insert into pbook values(" + uid + ",'" + DropDownList7.SelectedItem.ToString() + "','" + TextBox12.Text + "','" + slot + "','" + TextBox2.Text + "','" + TextBox3.Text + "',0,'" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "')";
                ob.exec(str);
                
                Label11.Visible = true;
                Label11.ForeColor = System.Drawing.Color.Green;
                Label11.Text = "Your request has been approved!";
                Response.Write("<script type = 'text/javascript'>alert('Successfully Complete Thank you');</script>");
                //TextBox1.Text = "";
                //TextBox2.Text = "";
                //TextBox3.Text = "";
                if (DropDownList1.SelectedItem.ToString() == "Four Wheeler")
                {
                    Session["vtype"] = "II Floor";
                }
                else
                {
                    Session["vtype"] = "I Floor";
                }
                Session["parkid"] = TextBox1.Text ;
                Session["houname"] = DropDownList7.SelectedItem.ToString();
                Session["slottime"] = DropDownList2.SelectedItem.ToString();
                Session["pslot"] = TextBox2.Text ;
                Session["pdate"] = TextBox3.Text;
                string ss = TextBox2.Text;
                string[] ss1 = ss.Split(' ');
                Session["table"] = ss1[1].ToString();
                Response.Redirect("UserBookFood.aspx"); 
                

              
            
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        ob.dr = ob.ret_dr("select ptype from PSlot where huname='"+DropDownList7.SelectedItem.ToString()+"'");
        while (ob.dr.Read())
        {
            DropDownList1.Items.Add(ob.dr[0].ToString());

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        ob.dr = ob.ret_dr("select tpark from PSlot where huname='" + DropDownList7.SelectedItem.ToString() + "' and ptype='"+DropDownList1.SelectedItem.ToString()+"'");
        if (ob.dr.Read())
        {
            //TextBox13.Text = ob.dr[0].ToString();
            slot = Convert.ToInt32(ob.dr[0].ToString());
            

        }
        for (int i = 1; i <= slot; i++)
        {
           // DropDownList8.Items.Add(i.ToString());
            tslot.Add("Slot "+i.ToString());
        }
        ob.dr = ob.ret_dr("select bslot from pbook where huname='" + DropDownList7.SelectedItem.ToString() + "' and pdate='"+TextBox3.Text+"'");
        while (ob.dr.Read())
        {

            bslot.Add(ob.dr[0].ToString());


        }
        for (int i = 0; i < tslot.Count; i++)
        {
            for (int j = 0; j < bslot.Count; j++)
            {
                if (tslot[i].ToString() == bslot[j].ToString())
                {
                    tslot.Remove(tslot[i]);
                }
            }
        }
        TextBox2.Text = tslot[0].ToString();

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList8_SelectedIndexChanged1(object sender, EventArgs e)
    {
        // ob.dr = ob.ret_dr("select bslot from pbook where huname='" + DropDownList7.SelectedItem.ToString() + "' and vtype='"+DropDownList1.SelectedItem.ToString()+"'");
        // while (ob.dr.Read())
        // {
        //     arslot.Add(ob.dr[0].ToString());
        // }
        //if(arslot.Contains(DropDownList8.SelectedItem.ToString()))
        //{
        //    TextBox2.Text = DropDownList8.SelectedItem.ToString()+" Not Available";
        //    Button3.Enabled = false;
        //}
        //else
        //{

        //TextBox2.Text = "Slot "+DropDownList8.SelectedItem.ToString();
        //}
    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}