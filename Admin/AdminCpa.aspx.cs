using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;



public partial class Admin_AdminCpa : System.Web.UI.Page
{
    string strScript = string.Empty;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["CpmStatus"] = 7;
            int type = Convert.ToInt32(Session["CpmStatus"]);
            bind(type);          
        }        
    }

    private void bind(int type)
    {
      
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("spa1_selAdvertiser1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@type", SqlDbType.NVarChar).Value = type;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;
        }
           
    }
   
    protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        //Bindgrd1();
    }
    
   
    protected void gvd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        string ID = ((HiddenField)row.FindControl("Hfield")).Value;
        Deletegridvalue(ID);

    }
   
    private void Deletegridvalue(string ID)
    {
        string qry = "delete from users_Advertisers where Uid = (" + ID + ")";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string alert = "alert('Selected Item Deleted successfully')";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", alert, true);
       
    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminCpmEdit.aspx");
    }
    protected void lnkwaiting_Click(object sender, EventArgs e)
    {
        Session["CpmStatus"] = 7;
        int type = Convert.ToInt32(Session["CpmStatus"]);
        bind(type);
        lnkwaiting.ForeColor = ColorTranslator.FromHtml("#791C1C");
        lnkwaiting.Attributes.Add("class","body");
        lnkwaiting.Font.Bold = true;
        lnkActive1.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnksuspend.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkDecline1.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkwaiting.CssClass = "body";
        lnkDecline1.CssClass = "body2";
        lnkActive1.CssClass = "body2";
        lnksuspend.CssClass = "body2";
    }
    protected void lnkActive1_Click(object sender, EventArgs e)
    {
        Session["CpmStatus"] = 6;
        int type = Convert.ToInt32(Session["CpmStatus"]);
        bind(type);
        lnkActive1.ForeColor = ColorTranslator.FromHtml("#791C1C");
        lnkActive1.Attributes.Add("class", "body");
        lnkActive1.Font.Bold = true;
        lnkwaiting.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnksuspend.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkDecline1.ForeColor=ColorTranslator.FromHtml("#135C1C");
        lnkActive1.CssClass = "body";
        lnkwaiting.CssClass = "body2";
        lnksuspend.CssClass = "body2";
        lnkDecline1.CssClass = "body2";

    }
    protected void lnksuspend_Click(object sender, EventArgs e)
    {
        Session["CpmStatus"] = 8;
        int type = Convert.ToInt32(Session["CpmStatus"]);
        bind(type);
        lnksuspend.ForeColor = ColorTranslator.FromHtml("#791C1C");
        lnksuspend.Font.Bold = true;
        lnksuspend.Attributes.Add("class", "body");
        lnkwaiting.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkActive1.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkDecline1.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnksuspend.CssClass = "body";
        lnkwaiting.CssClass = "body2";
        lnkActive1.CssClass = "body2";
        lnkDecline1.CssClass = "body2";
        
    }
    protected void lnkDecline1_Click(object sender, EventArgs e)
    {
        Session["CpmStatus"] = 9;
        int type = Convert.ToInt32(Session["CpmStatus"]);
        bind(type);
        lnkDecline1.ForeColor = ColorTranslator.FromHtml("#791C1C");
        lnkDecline1.Font.Bold = true;
        lnkDecline1.Attributes.Add("class", "body");
        lnkActive1.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnksuspend.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnkwaiting.ForeColor = ColorTranslator.FromHtml("#135C1C");
        lnksuspend.CssClass = "body2";
        lnkwaiting.CssClass = "body2";
        lnkActive1.CssClass = "body2";
        lnkDecline1.CssClass = "body";

    }
    protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
    {

        DropDownList drp = (DropDownList)sender;
        GridViewRow gv = (GridViewRow)drp.NamingContainer;
        int index = gv.RowIndex;
        DropDownList DropDownList1 = (DropDownList)GridView1.Rows[index].FindControl("ddlStatus");
        HiddenField hdf = (HiddenField)GridView1.Rows[index].FindControl("Hfield");
        string NewStatus = DropDownList1.SelectedItem.Text;
        if (NewStatus != "Select")
        {
            string query = "update users_Advertisers set Status='" + NewStatus + "' where Uid=" + hdf.Value;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string alert = "alert('Selected Item Status Updated successfully');location.replace('AdminCpa.aspx');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", alert, true);

        }
        else
        {
            string alert = "alert('Please Select The Status');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", alert, true);
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string Searchtext = txtSearch.Text;
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from users_Advertisers where Email like '%" + Searchtext + "%' or Uid like '%" + Searchtext + "%' or Fname like '%" + Searchtext + "%' ", con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.Add("@type", SqlDbType.NVarChar).Value = type;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;
        }
    }
}