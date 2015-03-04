using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class viewReports : System.Web.UI.Page
{
    string ids;
    string strScript = string.Empty;
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
                                panel1.Visible = true;                               
                            }
                        }
                    }
                }
            }
        }
    }

    private int BindGridDetails(string ids)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from UserReports where id=" + ids, con);
        DataSet ds = new DataSet();
        con.Close();
        da.Fill(ds);
        int count = ds.Tables[0].Rows.Count;
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtid.Text = Convert.ToString(ds.Tables[0].Rows[0]["Uid"]);
            txtwebsite.Text = Convert.ToString(ds.Tables[0].Rows[0]["WebsiteName"]);
            txtimp.Text = Convert.ToString(ds.Tables[0].Rows[0]["Impressions"]);
            txtclicks.Text = Convert.ToString(ds.Tables[0].Rows[0]["Clicks"]);
            Txtconversions.Text = Convert.ToString(ds.Tables[0].Rows[0]["Converssions"]);
            Txtctr.Text = Convert.ToString(ds.Tables[0].Rows[0]["CTR"]);
            //DdlCountry.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["Country"]);
            //DdlState.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["State"]);
            TxtNetrevenue.Text = Convert.ToString(ds.Tables[0].Rows[0]["NetworkRevenue"]);
            //ddlcity.SelectedItem.Text = Convert.ToString(ds.Tables[0].Rows[0]["City"]);
            txtprofit.Text = Convert.ToString(ds.Tables[0].Rows[0]["NetworkProfit"]);
            Txtecpm.Text = Convert.ToString(ds.Tables[0].Rows[0]["Ecpm"]);
            Txtcountry.Text = Convert.ToString(ds.Tables[0].Rows[0]["Country"]);
            Txtregdate.Text = Convert.ToString(ds.Tables[0].Rows[0]["regDate"]);
            Txtuserrole.Text = Convert.ToString(ds.Tables[0].Rows[0]["UserRole"]);
            txtpubrevenue.Text = Convert.ToString(ds.Tables[0].Rows[0]["PublisherRevenue"]);
        }
        else
        {


        }

        return count;
    }
    protected void backbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Loginreports.aspx");
    }
}