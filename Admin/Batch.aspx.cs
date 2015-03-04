using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.IO;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class _Batch : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string username = string.Empty;
    string script = string.Empty;
    string Base_dir = System.AppDomain.CurrentDomain.BaseDirectory;

    int listindex;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void rbUploadfile_CheckedChanged(object sender, EventArgs e)
    {
        if (rbUploadfile.Checked)
        {
            trFileUpload.Visible = true;
            trList.Visible = true;
            btnContinue.Enabled = true;
        }
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        string allert = "";

        if (rbOnefile.Checked)
        {
            Response.Redirect("~/Subscribers/Add.aspx");
        }
        else if (rbUploadfile.Checked)
        {

            if (uploadFile.HasFile)
            {
                string strFileName = Server.HtmlEncode(uploadFile.FileName);
                string strExtension = Path.GetExtension(strFileName);
                string strUploadFileName = "UploadFiles/" + strFileName;//date + strExtension               
                uploadFile.SaveAs(Base_dir + strUploadFileName);
                string strExcelConn = "";
                if (strExtension == ".xls")
                {
                    strExcelConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + (Base_dir + strUploadFileName) + ";Extended Properties='Excel 8.0;HDR=YES;'";
                }
                else
                {
                    Response.Write("<script>alert('Please select a file with Excel 97-2003 format to import!');</script>");
                    return;
                }
                DataTable dtExcel = RetrieveData(strExcelConn);
                SqlBulkCopyImport(dtExcel);
            }
            else
            {
                allert = "alert('Please Upload your file to import')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert box", allert, true);
            }
        }
    }
   
    protected DataTable RetrieveData(string strConn)
    {
        DataTable dtExcel = new DataTable();
        using (OleDbConnection con = new OleDbConnection(strConn))
        {
            OleDbDataAdapter da = new OleDbDataAdapter("select * from [Sheet1$]", con);
            da.Fill(dtExcel);
        }
        return dtExcel;
    }
    protected void SqlBulkCopyImport(DataTable dtExcel)
    {
        conn.Open();
        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(conn))
        {
            bulkCopy.DestinationTableName = "dbo.cities";
            foreach (DataColumn dc in dtExcel.Columns)
            {
                bulkCopy.ColumnMappings.Add(dc.ColumnName, dc.ColumnName);
               // bulkCopy.ColumnMappings.Add(0, 1);
            }
            bulkCopy.WriteToServer(dtExcel);
        }
        conn.Close();
    }
    protected void rbOnefile_CheckedChanged(object sender, EventArgs e)
    {
        if (rbOnefile.Checked)
        {
            trFileUpload.Visible = false;
            trList.Visible = false;
            btnContinue.Enabled = true;
        }
    }
}