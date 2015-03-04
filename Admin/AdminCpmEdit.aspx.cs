using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Admin_Default3 : System.Web.UI.Page
{
    string regdate = System.DateTime.Now.ToString();
    string ids;
   // int status = 0;
    String status = "Waiting";
    errorclass err = new errorclass();
    string excep_page = "signup.aspx";
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
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
                                pnel1.Visible = false;
                                disabletxts();
                                Label2.Text = "View Advertisers Details";
                                btnupdate.Visible = false;
                                btncreate.Visible = false;
                                Btnsend.Visible = false;

                            }
                            else if (Pmode == "add")
                            {
                                disabletxts();
                                Label2.Text = "Send Login Details";
                                btnupdate.Visible = false;
                                btncreate.Visible = false;
                                Btnsend.Visible = true;
                                txtuserid.ReadOnly = true;
                            }
                            else if (Pmode == "Edit")
                            {
                                pnel1.Visible = false;                               
                                btncreate.Visible = false;
                                Btnsend.Visible = false;
                            }
                        }
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    btnupdate.Visible = false;
                    btncreate.Visible = true;
                    Btnsend.Visible = false;
                    Label2.Text = "Create new Advertiser";
                    pnel1.Visible = false;
                }
            }
        }
    }

     private void disabletxts()
    {
        TxtFname.ReadOnly = true;
        TxtLname.ReadOnly = true;
        TxtCompany.ReadOnly = true;
        TxtUrl.ReadOnly = true;
        TxtEmail.ReadOnly = true;
        TxtPhNo.ReadOnly = true;
        TxtAddress.ReadOnly = true;
        TxtZip.ReadOnly = true;
        ddlcity.Enabled = false;
        DdlCountry.Enabled = false;
        DdlState.Enabled = false;
        chk1.Enabled = false;        
    }

     private int BindGridDetails(string ids)
     {
         con.Open();
         SqlDataAdapter da = new SqlDataAdapter("select * from Users_Advertisers where Uid=" + ids, con);
         DataSet ds = new DataSet();
         con.Close();
         da.Fill(ds);
         int count = ds.Tables[0].Rows.Count;
         if (ds.Tables[0].Rows.Count > 0)
         {
             for (int i = 0; i < DdlCountry.Items.Count; i++)
             {
                 if (DdlCountry.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["Country"]))
                 {
                     DdlCountry.Items[i].Selected = true;
                     break;
                 }
             }
             for (int i = 0; i < DdlState.Items.Count; i++)
             {
                 if (DdlState.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["State"]))
                 {
                     DdlState.Items[i].Selected = true;
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

             for (int i = 0; i < chk1.Items.Count; i++)
             {

                 if (chk1.Items[i].Text == Convert.ToString(ds.Tables[0].Rows[0]["AdvertiseMode"]))
                 {
                     chk1.Items[i].Selected = true;
                     break;
                 }
             }

             TxtFname.Text = Convert.ToString(ds.Tables[0].Rows[0]["Fname"]);
             TxtLname.Text = Convert.ToString(ds.Tables[0].Rows[0]["Lname"]);
             TxtCompany.Text = Convert.ToString(ds.Tables[0].Rows[0]["Company"]);
             TxtUrl.Text = Convert.ToString(ds.Tables[0].Rows[0]["Url"]);
             TxtEmail.Text = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
             TxtPhNo.Text = Convert.ToString(ds.Tables[0].Rows[0]["PhNumber"]);
             //DdlCountry.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["Country"]);
             //DdlState.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["State"]);
             TxtAddress.Text = Convert.ToString(ds.Tables[0].Rows[0]["Address"]);
             //ddlcity.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["City"]);
             TxtZip.Text = Convert.ToString(ds.Tables[0].Rows[0]["Zip"]);
             txtuserid.Text = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
         }
         else
         {


         }

         return count;
     }


    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        con.Open();
        ids = Request.QueryString["Editid"];
        SqlCommand cmd = new SqlCommand("update users_Advertisers set Fname=@Fname,Lname=@Lname,Company=@Company,Url=@Url,Email=@Email,PhNumber=@PhNumber,Country=@Country,State=@State,Address=@Address,City=@City,Zip=@Zip,AdvertiseMode=@AdvertiseMode where Uid=" + ids, con);
        cmd.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = TxtFname.Text;
        cmd.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = TxtLname.Text;
        cmd.Parameters.Add("@Company", SqlDbType.NVarChar).Value = TxtCompany.Text;
        cmd.Parameters.Add("@Url", SqlDbType.NVarChar).Value = TxtUrl.Text;
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = TxtEmail.Text;
        cmd.Parameters.Add("@PhNumber", SqlDbType.NVarChar).Value = TxtPhNo.Text;
        cmd.Parameters.Add("@Country", SqlDbType.NVarChar).Value = DdlCountry.SelectedItem.Text;
        cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = DdlState.SelectedItem.Text;
        cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = TxtAddress.Text;
        cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = ddlcity.SelectedItem.Text;
        cmd.Parameters.Add("@Zip", SqlDbType.NVarChar).Value = TxtZip.Text;
        cmd.Parameters.Add("@AdvertiseMode", SqlDbType.NVarChar).Value = chk1.SelectedItem.Text;
        cmd.ExecuteNonQuery();
        string strScript;
        strScript = "alert('User details has been updated successfully.');location.replace('Home.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
   
    protected void btncreate_Click(object sender, EventArgs e)
    {
        con.Open();
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
          "alertMessage", "alert('Advertiser registration completed succesfully');", true);
        con.Close();
        clear();
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
    protected void Btnsend_Click(object sender, EventArgs e)
    {
        ids = Request.QueryString["Editid"];
        con.Open();
        SqlCommand cmd = new SqlCommand("update users_Advertisers set Status=@Status,password=@pwd where Uid=" + ids, con);
        cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Waiting";
        cmd.Parameters.Add("@pwd", SqlDbType.NVarChar).Value = txtpwd.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        string strScript;

        string emailid = txtuserid.Text;
        string pwd = txtpwd.Text;
        string msgbody = "";
        try
        {
            MailMessage mm = new MailMessage();
            //mm.From = new MailAddress("info@wawalive.com");
            mm.From = new MailAddress("kvslakshmi@aceindus.in", "Indusnexus");
            mm.To.Add(emailid);


            msgbody = msgbody + "<table cellpadding='3' cellspacing='15' class='lable2'>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>Welcome to Indusnexus..!!  http://indusnexus.com/ </td></tr>";
            msgbody = msgbody + "<tr><td colspan='3' align='left'>Please find the attached ad codes.  </td></tr>";
            msgbody = msgbody + "<tr><td colspan='3' align='left'>Dear Partner,  </td></tr>";
            msgbody = msgbody + "<tr><td colspan='3' align='center'>We have created Advertiser account and sent all the details to your mail please check and go Live.  </td></tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td colspan='3' align='center' class='headings'>Dear " + TxtFname.Text + " , Your Login Details for IndusNexus are ";
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
            msgbody = msgbody + "<td class='lable1'>" + TxtPhNo.Text + "</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Please login here to activate your account <a href= http://indusnexus.com/Login.aspx >here</a> ,</td>";
            msgbody = msgbody + "</tr>";
            msgbody = msgbody + "<tr>";
            msgbody = msgbody + "<td class='lable1' colspan='3'> Now You can enjoy the  <a href= http://indusnexus.com/Login.aspx >Indusnexus</a> Servieces...  </td>";
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

        
        strScript = "alert('User Login details has been Mailed successfully.');location.replace('Home.aspx');";
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
        DdlCountry.DataSource = ds;
        DdlCountry.DataTextField = "countryName";
        DdlCountry.DataValueField = "countryid";
        DdlCountry.DataBind();
        con.Close();
        DdlCountry.Items.Insert(0, new ListItem("Select Country", "0"));



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
        DdlState.Items.Insert(0, new ListItem("Select State", "0"));
        if (DdlState.SelectedValue == "0")
        {
            ddlcity.Items.Clear();
            ddlcity.Items.Insert(0, new ListItem("Select City", "0"));
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
        ddlcity.Items.Insert(0, new ListItem("Select City", "0"));
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
}