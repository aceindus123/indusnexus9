using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// Summary description for errorclass
/// </summary>
public class errorclass
{
   
	public errorclass()
	{
		//
		// TODO: Add constructor logic here
       //
	}



    public void insert_exception(Exception ex, string excep_page)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        
        string excep1 = ex.StackTrace.ToString();
        string line = excep1.Substring(excep1.LastIndexOf("line"), (excep1.Length - excep1.LastIndexOf("line")));
        string exception_msg = ex.Message;
        string excep_date = System.DateTime.Now.ToString();
        string excep_status = "0";

        con.Open();      
        SqlCommand cmd = new SqlCommand("spi_Exception",con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@Excep_lineno",SqlDbType.NVarChar).Value=line;
        cmd.Parameters.Add("@Excep_desc",SqlDbType.NVarChar).Value=exception_msg;
        cmd.Parameters.Add("@Excep_page",SqlDbType.NVarChar).Value=excep_page;
        cmd.Parameters.Add("@Excep_postdate",SqlDbType.NVarChar).Value=excep_date;
        cmd.Parameters.Add("@Excep_status",SqlDbType.NVarChar).Value=excep_status;
        cmd.ExecuteNonQuery();
        con.Close();
        

    }
}