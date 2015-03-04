using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Admin_Exception : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }
    private void bind()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "spa_selException";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
   
    protected void grid1_pageindexchanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void gvEG_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        string ID = ((HiddenField)row.FindControl("Hfield")).Value;
        string qry = "delete from IndusException where Sno = (" + ID + ")";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bind();
        string alert = "alert('Selected Item Deleted successfully')";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", alert, true);
    }

}