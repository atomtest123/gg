﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminApproveHotel : System.Web.UI.Page
{
    DbConnection con = new DbConnection();
    DbConnection ob = new DbConnection();
    DbConnection ob1 = new DbConnection();
    SqlDataReader dr;
    DataSet ds = new DataSet();
    string str;
    public static string id;
    public static string fpath = "", s = "", mode = "", str1 = "", pp = "";
    public int CurrentPageIndex
    {
        get
        {
            if (ViewState["pg"] == null)
                return 0;
            else
                return Convert.ToInt16(ViewState["pg"]);
        }
        set
        {
            ViewState["pg"] = value;
        }
    }
    int pg = 0;
    protected void BindData()
    {
        CurrentPageIndex = 0;
        ds.Tables.Clear();
        PagedDataSource pgd = new PagedDataSource();
        string cmdstr = "select * from hreg where status=0";
        //  string str = "select * from design";
        ds = con.ret_ds(cmdstr);
        pgd.DataSource = ds.Tables[0].DefaultView;
        pgd.CurrentPageIndex = CurrentPageIndex;
        pgd.AllowPaging = true;
        pgd.PageSize = 12;
        // LinkButton1.Enabled = !(pgd.IsLastPage);
        // LinkButton2.Enabled = !(pgd.IsFirstPage);

        DataList1.DataSource = pgd;
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string uname = "";
        id = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
        string sss = "update hreg set status=1 where hid=" + id + "";
        ob1.exec(sss);
        ob.dr = ob.ret_dr("select huname from hreg where hid=" + id + "");
        if (ob.dr.Read())
        {
            uname = ob.dr[0].ToString();
        }
        string r = "2";
        string s1 = "update Login set status=2 where Username='" + uname + "'";
        ob1.exec(s1);
        BindData();
        Response.Write("<script type = 'text/javascript'>alert('Approve Hotel Thank you');</script>");
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {

    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {

    }
}