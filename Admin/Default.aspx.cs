using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Web;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Session["UserName"] = txtuname.Text;
        Session["Password"] = txtpassword.Text;

        if (txtuname.Text == "admin" && txtpassword.Text == "admin")
        {
            string date = System.DateTime.Now.ToString();
            string ip = GetIPAddress();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select top(1)* from Admin_LoginDetails order by logdate desc";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Session["ip"] = ds.Tables[0].Rows[0]["ipaddress"].ToString();
            Session["LogTime"] = ds.Tables[0].Rows[0]["logdate"].ToString();
           SqlCommand cmd2 = new SqlCommand("insert into Admin_LoginDetails (name,logdate,ipaddress) values ('" + txtuname.Text + "','" + date + "','" + ip + "')", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx");
        }
        else
        {

        }
    }

    private string GetIPAddress()
    {
        //IPAddress[] addr = new IPAddress[0];
        //try
        //{
        //    string strHostName = "";
        //    strHostName = System.Net.Dns.GetHostName();
        //    IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(strHostName);
        //    addr = ipEntry.AddressList;
        //}
        //catch
        //{ }
        //return addr[addr.Length - 2].ToString();
        try
        {
            string ipAdd;
            HttpRequest currentRequest = HttpContext.Current.Request;
            ipAdd = currentRequest.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (ipAdd == null || ipAdd.ToLower() == "unknown")
                ipAdd = currentRequest.ServerVariables["REMOTE_ADDR"];

            return ipAdd;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}