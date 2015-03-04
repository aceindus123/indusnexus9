using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class AdvertiserSignup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string regdate = System.DateTime.Now.ToString();
    String status = "Waiting";
    //int status = 0;
    string script;
    string excep_page = "AdvertiserSignup.aspx";
    errorclass err = new errorclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcountry();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (ChkTerms.Checked == true)
        {
            if (DdlCountry.SelectedIndex != 0)
            {
                if (DdlState.SelectedIndex != 0)
                {
                    if (ddlcity.SelectedIndex != 0)
                    {
                        try
                        {
                            con.Open();
                            SqlCommand cmd1 = new SqlCommand("select count(Email) from users_Advertisers where Email=@Email ", con);
                            cmd1.Parameters.AddWithValue("@Email", TxtEmail.Text);
                            int result = Convert.ToInt32(cmd1.ExecuteScalar());
                            if (result == 1)
                            {
                                ScriptManager.RegisterStartupScript(this, GetType(),
                              "alertMessage", "alert('Email Already Existed');", true);
                            }
                            else
                            {
                                SqlCommand cmd = new SqlCommand("sp_Advertisers", con);
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = TxtFname.Text;
                                cmd.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = TxtLname.Text;
                                cmd.Parameters.Add("@Company ", SqlDbType.NVarChar).Value = TxtCompany.Text;
                                cmd.Parameters.Add("@Url", SqlDbType.NVarChar).Value = TxtUrl.Text;
                                cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = TxtEmail.Text;
                                cmd.Parameters.Add("@PhNumber", SqlDbType.NVarChar).Value = TxtPhNo.Text;
                                cmd.Parameters.Add("@Country", SqlDbType.NVarChar).Value = DdlCountry.SelectedItem.Text;
                                cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = DdlState.SelectedItem.Text;
                                cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = TxtAddress.Text;
                                cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = ddlcity.SelectedItem.Text;
                                cmd.Parameters.Add("@Zip", SqlDbType.NVarChar).Value = TxtZip.Text;
                                cmd.Parameters.Add("@AdvertiseMode", SqlDbType.NVarChar).Value = chk1.SelectedItem.Text;
                                cmd.Parameters.Add("@RegDate", SqlDbType.NVarChar).Value = regdate;
                                cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = status;
                                cmd.ExecuteNonQuery();
                                SendMails(TxtFname.Text, TxtEmail.Text, TxtUrl.Text, TxtPhNo.Text, chk1.SelectedItem.Text, regdate);
                                ScriptManager.RegisterStartupScript(this, GetType(),
                                  "alertMessage", "alert('Registration Completed successfully');", true);
                                //con.Close();
                            }
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
                        ScriptManager.RegisterStartupScript(this,GetType(),"alertMessage","alert('Please Select City');",true);
                    }                
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this,GetType(),"alertmessage","alert('Please Select State');",true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this,GetType(),"alertMessage","alert('Please Select Country');",true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Please Accept Terms and Conditions');", true);
        }
    }
    protected void clear()
    {
        TxtFname.Text = "";
        TxtLname.Text = "";
        TxtCompany.Text = "";
        TxtUrl.Text = "";
        TxtEmail.Text = "";
        TxtPhNo.Text = "";
        DdlCountry.SelectedIndex = 0;
        DdlState.SelectedIndex = 0;
        TxtAddress.Text = "";
        ddlcity.SelectedIndex = 0;
        TxtZip.Text = "";
        chk1.SelectedItem.Selected = false;
    }
    private void SendMails(string fname, string emailid, string Url, string phno, string Admode, string postdate)
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
            msgbody = msgbody + "<td class='lable1'> Registered Url :</td>";
            msgbody = msgbody + "<td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + Url + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Mobile Number :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + phno + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'>Your Advertise Mode :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + Admode + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Your Login Details will be sent an email to your Email Id.. </td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'>Your registration was completed on : " + postdate + "</td>";
            msgbody = msgbody + "</tr></table>";
            mm.Subject = "Confirmation Email from Indusnexus";
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
        SqlCommand cmd = new SqlCommand("select * from country", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        DdlCountry.DataSource = ds;
        DdlCountry.DataTextField = "countryName";
        DdlCountry.DataValueField = "countryid";
        DdlCountry.DataBind();
        con.Close();
        DdlCountry.Items.Insert(0, new ListItem("--Select Country--", "0"));
    }

    protected void DdlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        int countryid = Convert.ToInt32(DdlCountry.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select *  from state where countryid=" + countryid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DdlState.DataSource = ds;
        DdlState.DataTextField = "stateName";
        DdlState.DataValueField = "stateid";
        DdlState.DataBind();
        con.Close();
        DdlState.Items.Insert(0, new ListItem("--Select State--", "0"));
        if (DdlState.SelectedValue == "0")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Insert(0, new ListItem("--Select city--", "0"));
        }
    }

    protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        int stateid = Convert.ToInt32(DdlState.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from city where stateid=" + stateid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddlcity.DataSource = ds;
        ddlcity.DataTextField = "cityName";
        ddlcity.DataValueField = "cityid";
        ddlcity.DataBind();
        con.Close();
        ddlcity.Items.Insert(0, new ListItem("--select city--", "0"));
    }
}