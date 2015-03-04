using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Loginreports : System.Web.UI.Page
{
    int type;
    errorclass err = new errorclass();
    string excep_page = "signup.aspx";
    string strScript = string.Empty;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserReports", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
            
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            }
            else
            {
                lbnorecords.Visible = true;
                GridView1.Visible = false;
            }
        }      
    }  


    protected void Publisher_Click(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where userRole='Publisher' ", con);
       SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Publisher Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
            // int type = Convert.ToInt32(Session["CurrentStatus"]);
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;
            
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        
    }



    protected void CPM_Click(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where userRole='CPM' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "CPM Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
            // int type = Convert.ToInt32(Session["CurrentStatus"]);
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;

        }
    }
    protected void CPC_Click(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where userRole='CPC' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "CPC Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
            // int type = Convert.ToInt32(Session["CurrentStatus"]);
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;

        }
    }
    protected void CPA_Click(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        DataSet ds = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where userRole='CPA' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "CPA Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;
            lbnorecords.Visible = false;
            // int type = Convert.ToInt32(Session["CurrentStatus"]);
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;

        }
    }
  
    //protected void gvd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
    //    string ID = ((HiddenField)row.FindControl("Hfield")).Value;
    //    Deletegridvalue(ID);

    //}
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where Id like '%" + txtSearch.Text + "%' or  WebsiteName like '%" + txtSearch.Text + "%' or Uid like '%" + txtSearch.Text + "%'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd.ExecuteNonQuery();
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lbnorecords.Visible = false;
            GridView1.Visible = true;
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;
        }
        
    }

   
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtfrom.Text = "";
        txtto.Text = "";
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UserReports where Country=@Country", con);
        cmd.Parameters.AddWithValue("@Country", DropDownList2.SelectedItem.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Reports";
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            lbnorecords.Visible = false;
            GridView1.Visible = true;
        }
        else
        {
            lbnorecords.Visible = true;
            GridView1.Visible = false;
        }
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        BindGrid(txtfrom.Text, txtto.Text);        
    }
    public void BindGrid(string startDate, string endDate)
    {

        DataTable dt = new DataTable();

        //Check if the string has the valid date format

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        try
        {
            con.Open();
            string sqlStatement = "select * from userReports where CONVERT(datetime,regDate, 101) between @DateFrom and @DateTo";
            SqlCommand sqlCmd = new SqlCommand(sqlStatement, con);
            sqlCmd.Parameters.AddWithValue("@DateFrom", startDate);
            sqlCmd.Parameters.AddWithValue("@DateTo", endDate);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dt);
            
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Reports";
                GridView1.DataSource = dt;
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
        catch (Exception ex)
        {
            err.insert_exception(ex, excep_page);
        }
        //catch (System.Data.SqlClient.SqlException ex)
        //{
        //    string msg = "Fetch Error:";
        //    msg += ex.Message;
        //    throw new Exception(msg);
        //}
        finally
        {
            con.Close();
        }

    }
    
}