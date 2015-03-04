using System;

public partial class New_Admin_NexusAdminMpage : System.Web.UI.MasterPage
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
