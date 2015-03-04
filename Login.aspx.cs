using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
  
    static string excep_page = "Exception.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (TxtUname.Text == "Indusnexus" && Txtpwd.Text == "nexus")
        {
            DateTime date = System.DateTime.Now;
            string date1 = date.ToString("MM/dd/yyyy HH:mm:ss");
            string ip = GetIPAddress();
            con.Open();

            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = "select top(1)* from signindetails order by logdate desc";
            //cmd.Connection = con;
            //cmd.CommandText = "select * from Users_Publishers where EmailId=@Email,password=@password";
            //cmd.Parameters.AddWithValue("Email", TxtUname.Text);
            //cmd.Parameters.AddWithValue("password", Txtpwd.Text);

            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //Session["ip"] = ds.Tables[0].Rows[0]["ipaddress"].ToString();
            //Session["LogTime"] = ds.Tables[0].Rows[0]["logdate"].ToString();

            SqlCommand cmd2 = new SqlCommand("insert into signindetails (name,logdate,ipaddress) values ('" + TxtUname.Text + "','" + date1 + "','" + ip + "')", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Default.aspx");
        }
        else
        {
            string alert = "alert('UserName does Not Existed')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", alert, true);
        }
    }
    private string GetIPAddress()
    {
        try
        {
            string Sinfo;
            HttpRequest currentRequest = HttpContext.Current.Request;
            Sinfo = currentRequest.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (Sinfo == null || Sinfo.ToLower() == "unknown")
            {
                Sinfo = currentRequest.ServerVariables["REMOTE_ADDR"];
                Sinfo += "/" + currentRequest.ServerVariables["LOGON_USER"];
            }
            string[] computerinfo = Sinfo.Split('/');
            return computerinfo[0];
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
}