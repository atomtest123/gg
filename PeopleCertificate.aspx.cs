using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PeopleCertificate : System.Web.UI.Page
{
    #region CONSTANT
    public static string d;
    public static int h, m;
    public static string sitem;
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            possession();
        }
    }
    
    public void possession()
    {
        
        
            //m = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            bid.Text = Session["bid"].ToString();
            pslot.Text = Session["pslot"].ToString();
            huname.Text = Session["huname"].ToString();
           
            uuname.Text = Session["uuname"].ToString();
         
            ftable.Text = Session["ftable"].ToString();
            floor.Text = Session["floor"].ToString();
            fdate.Text = Session["fdate"].ToString();
            timeslot.Text = Session["timeslot"].ToString();
            Amount.Text = Session["tamount"].ToString();
            sitem = Session["fitem"].ToString();

            string[] values = sitem.Split(':');
            for (int i = 1; i < values.Length; i++)
            {
                TextBox1.Text += values[i].Trim() + "\n";
            }

         
         
            
            
       



    }
   
   
    

    protected void Button6_Click(object sender, EventArgs e)
    {
       Response.Redirect("Hompage1.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        //Response.Redirect("PeopleHome.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        //Response.Redirect("PeopleHome.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
       // Response.Redirect("PeopleHome.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
}