using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class New_FeadBack : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string tdate = System.DateTime.Now.ToString();
    errorclass err = new errorclass();   
    string Expage = "Feedback.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("spi_feedback",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtname.Text;
            cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtemail.Text;
            cmd.Parameters.Add("@Comments", SqlDbType.NVarChar).Value = txtquery.Text;
            cmd.Parameters.Add("@Date", SqlDbType.DateTime).Value = tdate;
            cmd.ExecuteNonQuery();
            sendEmail(txtname.Text, txtemail.Text, txtquery.Text, tdate);
            ScriptManager.RegisterStartupScript(this,GetType(),"alertmaessage","alert('Feedback Submitted Successfully')",true);
            
        }
        catch (Exception ex)
        {
            err.insert_exception(ex, Expage);
            ScriptManager.RegisterStartupScript(this,GetType(),"alertmessage","alert('"+ex+"')",true);
        }
        finally
        {
            con.Close();
            txtemail.Text = "";
            txtname.Text = "";
            txtquery.Text = "";
        }
    }

    private void sendEmail(string name, string email, string comments, string tdate)
    {


        string Msg = "";
        try
        {
            MailMessage mm = new MailMessage();
            //mm.From = new MailAddress("info@wawalive.com");
            mm.From = new MailAddress("kvslakshmi@aceindus.in","Indusnexus");
            mm.To.Add(email);

            Msg += "<a href='http://indusnexus.com/'><img src='http://indusnexus.com/images/logo.png' width='250' height='76' border='0'></a><br />" +
                    "Dear " + name + ",<br>" +
                    "<br>Your Comments have been Submitted indusnexus admin successfully.<br>" +
                    "<br><b> Your Comments Details : </b> <br>" +
                    "<br>Your Name :" + name +
                    "<br>Comments :" + comments +
                    "<br>Emails :" + email +
                     "<br>Commented Date :" + tdate +                                 
                    "<br>Thank you for your valuable suggestions on Indusnexus<br>" +
                    "<br>Keep visit our site <a href='http://indusnexus.com/'>Indusnexus</a><br>" +
                    "<br>";

          
            mm.Subject = "Confirmation Email from Indunexus";
            mm.IsBodyHtml = true;
            mm.Body = Msg;
            SmtpClient smtp = new SmtpClient();
            smtp.Send(mm);
            if (mm.Attachments.Count > 0)
            {
                //Clear the attachments and delete the sessionid folder from tempFiles 
                mm.Attachments.Dispose();
            }

        }
        catch (Exception ex)
        {
            err.insert_exception(ex, Expage);
        }

    }
}