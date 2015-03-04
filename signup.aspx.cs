using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string script;
    string regdate = System.DateTime.Now.ToString();
    string paypalid = string.Empty;
    string skrillid = string.Empty;
    string bankname = string.Empty;
    string bankaddress = string.Empty;
    string accountholdaddress = string.Empty;
    string accountno = string.Empty;
    string accounttype = string.Empty;
    string rnosortcode = string.Empty;
    string bitcoinaddress = string.Empty;
    String status = "Waiting";
    errorclass err = new errorclass();
    string excep_page = "signup.aspx";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcountry();
        }


    }
    protected void btn1_Click(object sender, EventArgs e)
    {

        if (Chkprivacy.Checked == true)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(Email) from users_publishers where Email=@Email", con);
            cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
            //SqlDataReader dr = cmd1.ExecuteReader();
            int result = Convert.ToInt32(cmd1.ExecuteScalar());
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(),
                  "alertMessage", "alert('Email Already Existed');", true);
            }
            else
            {
                if (ddlcountry.SelectedIndex != 0)
                {
                    if (ddlstate.SelectedIndex != 0)
                    {
                        if (ddlcity.SelectedIndex != 0)
                        {
                            try
                            {

                                SqlCommand cmd = new SqlCommand("sp_publishers", con);
                                cmd.CommandType = CommandType.StoredProcedure;
                                if (ddlpayment.SelectedItem.Text == "Direct Deposit")
                                {

                                    cmd.Parameters.Add("@BankName", SqlDbType.NVarChar).Value = txtbank.Text;
                                    cmd.Parameters.Add("@BankAddress", SqlDbType.NVarChar).Value = txtbankaddr.Text;
                                    cmd.Parameters.Add("@AcntHolderName", SqlDbType.NVarChar).Value = txtaccount.Text;
                                    cmd.Parameters.Add("@AccountNumber", SqlDbType.NVarChar).Value = txtaccountno.Text;
                                    cmd.Parameters.Add("@AccountType", SqlDbType.NVarChar).Value = ddl1.SelectedItem.Text;
                                    cmd.Parameters.Add("@RnoSortCode", SqlDbType.NVarChar).Value = Txtrouting.Text;
                                }
                                else
                                {
                                    cmd.Parameters.Add("@BankName", SqlDbType.NVarChar).Value = bankname;
                                    cmd.Parameters.Add("@BankAddress", SqlDbType.NVarChar).Value = bankaddress;
                                    cmd.Parameters.Add("@AcntHolderName", SqlDbType.NVarChar).Value = accountholdaddress;
                                    cmd.Parameters.Add("@AccountNumber", SqlDbType.NVarChar).Value = accountno;
                                    cmd.Parameters.Add("@AccountType", SqlDbType.NVarChar).Value = accounttype;
                                    cmd.Parameters.Add("@RnoSortCode", SqlDbType.NVarChar).Value = rnosortcode;
                                }

                                cmd.Parameters.Add("@UniqueSiteTraffic", SqlDbType.NVarChar).Value = ddlunique.SelectedItem.Text;
                                cmd.Parameters.Add("@siteCategory", SqlDbType.NVarChar).Value = ddlsite2.SelectedItem.Text;
                                cmd.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = txtfname.Text;
                                cmd.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = txtlname.Text;
                                cmd.Parameters.Add("@Country", SqlDbType.NVarChar).Value = ddlcountry.SelectedItem.Text;
                                cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = ddlstate.SelectedItem.Text;
                                cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = ddlcity.SelectedItem.Text;
                                cmd.Parameters.Add("@Address1", SqlDbType.NVarChar).Value = txtadd1.Text;
                                cmd.Parameters.Add("@Address2", SqlDbType.NVarChar).Value = "";
                                cmd.Parameters.Add("@Zip", SqlDbType.NVarChar).Value = txtzip.Text;
                                cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtEmail.Text;
                                cmd.Parameters.Add("@PhNumber", SqlDbType.NVarChar).Value = "";
                                cmd.Parameters.Add("@PayeeName", SqlDbType.NVarChar).Value = txtPayable.Text;
                                cmd.Parameters.Add("@PaymentMethod", SqlDbType.NVarChar).Value = ddlpayment.SelectedItem.Text;
                                cmd.Parameters.Add("@SiteUrl", SqlDbType.NVarChar).Value = txtsiteurl.Text;
                                cmd.Parameters.Add("@RegDate", SqlDbType.NVarChar).Value = regdate;
                                cmd.Parameters.Add("@PayPalId", SqlDbType.NVarChar).Value = paypalid;
                                cmd.Parameters.Add("@SkrillId", SqlDbType.NVarChar).Value = skrillid;
                                cmd.Parameters.Add("@BitCoinAddress", SqlDbType.NVarChar).Value = bitcoinaddress;
                                cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = status;
                                cmd.ExecuteNonQuery();
                                SendMails(txtfname.Text, txtEmail.Text, "", ddlunique.SelectedItem.Text, ddlcity.SelectedItem.Text, ddlpayment.SelectedItem.Text, regdate);
                                ScriptManager.RegisterStartupScript(this, GetType(),
                                  "alertMessage", "alert('Registration Completed succesfully');", true);
                            }
                            catch (Exception ex)
                            {
                                err.insert_exception(ex, excep_page);
                                script = "<script type=\"text/javascript\">alert('" + ex.Message + "');<script>";

                            }
                            finally
                            {
                                con.Close();
                                clear();
                            }
                        }

                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(),
                              "alertMessage", "alert('Please Select City ');", true);
                        }
                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(),
                          "alertMessage", "alert('Please Select State ');", true);
                    }

                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(),
                      "alertMessage", "alert('Please Select Country ');", true);
                }
            }

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(),
                  "alertMessage", "alert('Please check the PrivacyPolicy and Terms & Conditions ');", true);
        }

    }
    protected void clear()
    {
        ddlunique.SelectedIndex = 0;
        ddlsite2.SelectedIndex = 0;
        txtfname.Text = "";
        txtlname.Text = "";
        ddlcountry.SelectedIndex = 0;
        ddlstate.SelectedIndex = 0;
        ddlcity.SelectedIndex = 0;
        txtadd1.Text = "";
       // txtadd2.Text = "";
        txtzip.Text = "";
        txtEmail.Text = "";
        //txtphone.Text = "";
        txtPayable.Text = "";
        ddlpayment.SelectedIndex = 0;
    }

    protected void ddlpayment_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlpayment.SelectedValue == "Direct Deposit")
        {
            panel1.Visible = true;
        }
        else
        {

            panel1.Visible = false;
        }

    }
    private void SendMails(string fname, string emailid, string phno, string SiteTrffic, string address, string paymode, string postdate)
    {
        string msgbody = "";
        try
        {
            MailMessage mm = new MailMessage();
            //mm.From = new MailAddress("info@wawalive.com");
            mm.From = new MailAddress("kvslakshmi@aceindus.in", "Indusnexus");
            mm.To.Add(emailid);
            msgbody = msgbody + "<table cellpadding='3' cellspacing='15' class='lable2'>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>Now You are member of the Indusnexus</td></tr>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>http://indusnexus.com/</td></tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td colspan='3' align='center' class='headings'>Dear " + fname + " , Your Registration Details for IndusNexus are ";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Your Email Id :</td>";
            msgbody = msgbody + "<td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + emailid + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Your Site Trffic :</td>";
            msgbody = msgbody + "<td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + SiteTrffic + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Mobile Number :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + phno + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'>Your Address :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + address + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'>Your Payment mode :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + paymode + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'>Thank you for registration, Your registration was Successfully completed on : " + postdate + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Your Login Details will be sent an email to your Email Id.. </td>";
            msgbody = msgbody + "</tr></table>";

            //Msg += "<a href='http://indusnexus.com/'><img src='http://indusnexus.com/images/logo.png' width='250' height='76' border='0'></a><br />" +
            //        "Dear " + name + ",<br>" +
            //        "<br>Your Comments have been Submitted indusnexus admin successfully.<br>" +
            //        "<br><b> Your Comments Details : </b> <br>" +
            //        "<br>Your Name :" + name +
            //        "<br>Comments :" + comments +
            //        "<br>Emails :" + email +
            //         "<br>Commented Date :" + tdate +
            //        "<br>Thank you for your valuable suggestions on Indusnexus<br>" +
            //        "<br>Keep visit our site <a href='http://indusnexus.com/'>Indusnexus</a><br>" +
            //        "<br>";


            mm.Subject = "Confirmation Email from Indunexus";
            mm.IsBodyHtml = true;
            mm.Body = msgbody;
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
            err.insert_exception(ex, excep_page);
        }




    }
    private void bindcountry()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Country", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcountry.DataSource = ds;
        ddlcountry.DataTextField = "CountryName";
        ddlcountry.DataValueField = "CountryID";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0, new ListItem("--Select Country--", "0"));

    }

    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        int CountryID = Convert.ToInt32(ddlcountry.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from State where Countryid=" + CountryID, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlstate.DataSource = ds;
        ddlstate.DataTextField = "StateName";
        ddlstate.DataValueField = "StateID";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("--Select State--", "0"));
        if (ddlstate.SelectedValue == "0")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Insert(0, new ListItem("--Select City--", "0"));
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Stateid = Convert.ToInt32(ddlstate.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from City where Stateid=" + Stateid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcity.DataSource = ds;
        ddlcity.DataTextField = "cityName";
        ddlcity.DataValueField = "cityID";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("--Select City--", "0"));

    }
}