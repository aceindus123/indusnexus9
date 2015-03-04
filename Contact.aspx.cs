using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string script;
    string regdate = System.DateTime.Now.ToString();
    errorclass err = new errorclass();
    string excep_page = "Contact.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Contact", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtname.Text;
            cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtemail.Text;
            cmd.Parameters.Add("@Description", SqlDbType.NVarChar).Value = txtquery.Text;
            cmd.Parameters.Add("@DateTime", SqlDbType.DateTime).Value = regdate;            
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(),
              "alertMessage", "alert('Your Query Posted to admin successfully');", true);
        }
        catch (Exception ex)
        {
            err.insert_exception(ex, excep_page);
            script = "<script type=\"text/javascript\">alert('" + ex.Message + "');<script>";
        }
        finally
        {
            con.Close();
            txtemail.Text = "";
            txtname.Text = "";
            txtquery.Text = "";
        }
    }
}