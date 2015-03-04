using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Admin_adminpublisherEdit : System.Web.UI.Page
{
    string ids;
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
        if (Session["UserName"] == null)
        {
            Response.Redirect("Default.Aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                bindcountry();
                string Pmode = Request.QueryString["Mode"];
                if (Pmode != "" && Pmode != null)
                {
                    ids = Request.QueryString["Editid"];
                    if (ids != null)
                    {
                        int count = BindGridDetails(ids);
                        if (count > 0)
                        {
                            if (Pmode == "View")
                            {
                                disabletxts();
                                Label2.Text = "View Publisher Details";
                                btnupdate.Visible = false;
                                btncreate.Visible = false;
                                Btnsend.Visible = false;
                            }
                            else if (Pmode == "Add")
                            {
                                pnel1.Visible = true;
                                Label2.Text = "Send Login Details";
                                btnupdate.Visible = false;
                                btncreate.Visible = false;
                                Btnsend.Visible = true;
                                disabletxts();
                            }
                            else if (Pmode == "Edit")
                            {
                                btncreate.Visible = false;
                                Btnsend.Visible = false;
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("Adminpublishers.aspx");
                    }
                }
                else
                {
                    btnupdate.Visible = false;
                    Btnsend.Visible = false;
                    btncreate.Visible = true;
                    Label2.Text = "Create new Publisher";
                }
            }
        }
    }

    private void disabletxts()
    {
        txtfname.ReadOnly = true;
        txtlname.ReadOnly = true;
        txtPayable.ReadOnly = true;
        txtphone.ReadOnly = true;
        txtzip.ReadOnly = true;
        txtEmail.ReadOnly = true;
        txtadd2.ReadOnly = true;
        txtadd1.ReadOnly = true;
        ddlcity.Enabled = false;
        ddlcountry.Enabled = false;
        ddlpayment.Enabled = false;
        ddlsite2.Enabled = false;
        ddlstate.Enabled = false;
        ddlunique.Enabled = false;
    }

    private int BindGridDetails(string ids)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from users_publishers where Uid=" + ids, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            for (int i = 0; i < ddlsite2.Items.Count; i++)
            {
                if (ddlsite2.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["siteCategory"]))
                {
                    ddlsite2.Items[i].Selected = true;
                    break;
                }
            }
            for (int i = 0; i < ddlcountry.Items.Count; i++)
            {
                if (ddlcountry.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["Country"]))
                {
                    ddlcountry.Items[i].Selected = true;
                    break;
                }
            }
            for (int i = 0; i < ddlstate.Items.Count; i++)
            {
                if (ddlstate.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["State"]))
                {
                    ddlstate.Items[i].Selected = true;
                    break;
                }
            }
            for (int i = 0; i < ddlcity.Items.Count; i++)
            {
                if (ddlcity.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["City"]))
                {
                    ddlcity.Items[i].Selected = true;
                    break;
                }
            }
            for (int i = 0; i < ddlpayment.Items.Count; i++)
            {
                if (ddlpayment.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["PaymentMethod"]))
                {
                    ddlpayment.Items[i].Selected = true;
                    break;
                }
            }
            txtsiteurl.Text = Convert.ToString(ds.Tables[0].Rows[0]["SiteUrl"]);
            txtfname.Text = Convert.ToString(ds.Tables[0].Rows[0]["Fname"]);
            txtlname.Text = Convert.ToString(ds.Tables[0].Rows[0]["Lname"]);
            txtadd1.Text = Convert.ToString(ds.Tables[0].Rows[0]["Address1"]);
            txtadd2.Text = Convert.ToString(ds.Tables[0].Rows[0]["Address2"]);
            txtzip.Text = Convert.ToString(ds.Tables[0].Rows[0]["Zip"]);
            txtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
            txtphone.Text = Convert.ToString(ds.Tables[0].Rows[0]["PhNumber"]);
            txtPayable.Text = Convert.ToString(ds.Tables[0].Rows[0]["PayeeName"]);
            txtuserid.Text = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
        }

        else
        {
            
        }
        return count;
    }



    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPublishers.aspx");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        
        con.Open();
        ids = Request.QueryString["Editid"];
        SqlCommand cmd = new SqlCommand("update users_publishers set UniqueSiteTraffic=@UniqueSiteTraffic,siteCategory=@siteCategory,Fname=@Fname,Lname=@Lname,Country=@Country,State=@State,City=@City,Address1=@Address1,Address2=@Address2,Zip=@Zip,Email=@Email,PhNumber=@PhNumber,PayeeName=@PayeeName,PaymentMethod=@PaymentMethod,SiteUrl=@SiteUrl where Uid=" + ids, con);
        cmd.Parameters.Add("@UniqueSiteTraffic", SqlDbType.NVarChar).Value = ddlunique.SelectedItem.Text;
        cmd.Parameters.Add("@siteCategory", SqlDbType.NVarChar).Value = ddlsite2.SelectedItem.Text;
        cmd.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = txtfname.Text;
        cmd.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = txtlname.Text;
        cmd.Parameters.Add("@Country", SqlDbType.NVarChar).Value = ddlcountry.SelectedItem.Text;
        cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = ddlstate.SelectedItem.Text;
        cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = ddlcity.SelectedItem.Text;
        cmd.Parameters.Add("@Address1", SqlDbType.NVarChar).Value = txtadd1.Text;
        cmd.Parameters.Add("@Address2", SqlDbType.NVarChar).Value = txtadd2.Text;
        cmd.Parameters.Add("@Zip", SqlDbType.NVarChar).Value = txtzip.Text;
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtEmail.Text;
        cmd.Parameters.Add("@PhNumber", SqlDbType.NVarChar).Value = txtphone.Text;
        cmd.Parameters.Add("@PayeeName", SqlDbType.NVarChar).Value = txtPayable.Text;
        cmd.Parameters.Add("@SiteUrl", SqlDbType.NVarChar).Value = txtsiteurl.Text;
        cmd.Parameters.Add("@PaymentMethod", SqlDbType.NVarChar).Value = ddlpayment.SelectedItem.Text;
        if (ddlpayment.SelectedItem.Text == "Direct Deposit")
        {

            cmd.Parameters.Add("@BankName", SqlDbType.NVarChar).Value = txtbank.Text;
            cmd.Parameters.Add("@BankAddress", SqlDbType.NVarChar).Value = txtbankaddr.Text;
            cmd.Parameters.Add("@AcntHolderName", SqlDbType.NVarChar).Value = txtaccount.Text;
            cmd.Parameters.Add("@AccountNumber", SqlDbType.NVarChar).Value = txtaccountno.Text;
            cmd.Parameters.Add("@AccountType", SqlDbType.NVarChar).Value = ddl1.SelectedItem.Text;
            cmd.Parameters.Add("@RnoSortCode", SqlDbType.NVarChar).Value = Txtrouting.Text;
        }

        cmd.ExecuteNonQuery();
        string strScript;
        strScript = "alert('User details has been updated successfully.');location.replace('AdminPublishers.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);


    }
    protected void Editreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPublishers.aspx");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPublishers.aspx");
    }
    protected void btncreate_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
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
            cmd.Parameters.Add("@Address2", SqlDbType.NVarChar).Value = txtadd2.Text;
            cmd.Parameters.Add("@Zip", SqlDbType.NVarChar).Value = txtzip.Text;
            cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = txtEmail.Text;
            cmd.Parameters.Add("@PhNumber", SqlDbType.NVarChar).Value = txtphone.Text;
            cmd.Parameters.Add("@PayeeName", SqlDbType.NVarChar).Value = txtPayable.Text;
            cmd.Parameters.Add("@PaymentMethod", SqlDbType.NVarChar).Value = ddlpayment.SelectedItem.Text;
            cmd.Parameters.Add("@SiteUrl", SqlDbType.NVarChar).Value = txtsiteurl.Text;
            cmd.Parameters.Add("@RegDate", SqlDbType.NVarChar).Value = regdate;
            cmd.Parameters.Add("@PayPalId", SqlDbType.NVarChar).Value = paypalid;
            cmd.Parameters.Add("@SkrillId", SqlDbType.NVarChar).Value = skrillid;
            cmd.Parameters.Add("@BitCoinAddress", SqlDbType.NVarChar).Value = bitcoinaddress;
            cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = status;
            cmd.ExecuteNonQuery();
            SendMails(txtfname.Text, txtEmail.Text, txtphone.Text, ddlunique.SelectedItem.Text, ddlcity.SelectedItem.Text, ddlpayment.SelectedItem.Text, regdate);
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
    protected void clear()
    {
        txtsiteurl.Text = "";
        ddlunique.SelectedIndex = 0;
        ddlsite2.SelectedIndex = 0;
        txtfname.Text = "";
        txtlname.Text = "";
        ddlcountry.SelectedIndex = 0;
        ddlstate.SelectedIndex = 0;
        ddlcity.SelectedIndex = 0;
        txtadd1.Text = "";
        txtadd2.Text = "";
        txtzip.Text = "";
        txtEmail.Text = "";
        txtphone.Text = "";
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
    protected void Btnsend_Click(object sender, EventArgs e)
    {
        ids = Request.QueryString["Editid"];
        SqlCommand cmd = new SqlCommand("update users_publishers set Status=@Status,password=@pwd where Uid=" + ids, con);
        cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Waiting";
        cmd.Parameters.Add("@pwd", SqlDbType.NVarChar).Value = txtpwd.Text;
        cmd.ExecuteNonQuery();
        string strScript;
        string emailid = txtuserid.Text;
        string pwd = txtpwd.Text;
        string msgbody = "";
        try
        {
            MailMessage mm = new MailMessage();
           
            mm.From = new MailAddress("kvslakshmi@aceindus.in", "Indusnexus");
            mm.To.Add(emailid);

            msgbody = msgbody + "<table cellpadding='3' cellspacing='15' class='lable2'>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>Now You are member of the Indusnexus</td></tr>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>http://indusnexus.com/</td></tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td colspan='3' align='center' class='headings'>Dear " + txtfname.Text + " , Your Login Details for IndusNexus are ";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Your User Id :</td>";
            msgbody = msgbody + "<td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + emailid + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Your Password :</td>";
            msgbody = msgbody + "<td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + txtpwd.Text + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1'> Mobile Number :</td>";
            msgbody = msgbody + " <td>:</td>";
            msgbody = msgbody + "<td class='lable1'>" + txtphone.Text + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Please login here to activate your account <a href= http://indusnexus.com/Login.aspx >here</a> ,</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Now You can enjoy the  <a href= http://indusnexus.com/Login.aspx >Indusnexus</a> Servieces...  </td>";
            msgbody = msgbody + "</tr></table>";
            mm.Subject = "Login Details from Indunexus";
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

        strScript = "alert('User Login details has been Mailed successfully.');location.replace('AdminPublishers.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);

    }
    private void bindcountry()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from country", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlcountry.DataSource = ds;
        ddlcountry.DataTextField = "countryName";
        ddlcountry.DataValueField = "countryid";
        ddlcountry.DataBind();
        con.Close();
        ddlcountry.Items.Insert(0, new ListItem("Select Counrty", "0"));

    }

    
    private void SendMails(string fname, string emailid, string phno, string SiteTrffic, string address, string paymode, string postdate)
    {

        string msgbody = "";
        try
        {
            MailMessage mm = new MailMessage();
           
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

    
    protected void ddlcountry_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int countryid = Convert.ToInt32(ddlcountry.SelectedValue);
        con.Open();
        SqlCommand cmd = new SqlCommand("select *  from state where countryid=" + countryid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddlstate.DataSource = ds;
        ddlstate.DataTextField = "stateName";
        ddlstate.DataValueField = "stateid";
        ddlstate.DataBind();
        con.Close();
        ddlstate.Items.Insert(0, new ListItem("Select State", "0"));
        if (ddlstate.SelectedValue == "0")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Insert(0, new ListItem("Select city", "0"));
        }
    }
    protected void ddlstate_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int stateid = Convert.ToInt32(ddlstate.SelectedValue);
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
        ddlcity.Items.Insert(0, new ListItem("select city", "0"));


    }
}