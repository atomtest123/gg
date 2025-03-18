using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for DbConnection
/// </summary>
public class DbConnection
{

    public DataSet ds = new DataSet();
    public DataTable dt = new DataTable();
    public SqlDataReader dr;
    public SqlConnection con()
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-B537O131\\MSSQLSERVER04;Initial Catalog=eDine;Integrated Security=True");
        con.Open();
        return con;
    }
    public void exec(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con());
        cmd.ExecuteNonQuery();
    }
    public int exec1(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con());
        return cmd.ExecuteNonQuery();
    }
    public SqlDataReader ret_dr(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con());
        return cmd.ExecuteReader();
    }
    public DataSet ret_ds(string str)
    {
        SqlDataAdapter sqlda = new SqlDataAdapter(str, con());
        sqlda.Fill(ds);
        return ds;
    }
    public DataTable ret_ds1(string str)
    {
        SqlDataAdapter sqlda = new SqlDataAdapter(str, con());
        sqlda.Fill(dt);
        return dt;
    }
    public DbConnection()
    {
        //
        // TODO: Add constructor logic here
        //
    }

}