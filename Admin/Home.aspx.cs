using System;

public partial class Admin_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["ip"]) != null && Convert.ToString(Session["ip"]) != "")
            {
                lbipaddress.Text = "Last Login IpAddress: " + Convert.ToString(Session["ip"]);
                lblogTime.Text = "Last Login Time: " + Convert.ToString(Session["LogTime"]);
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}