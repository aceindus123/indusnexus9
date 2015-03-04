<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Batch.aspx.cs" Inherits="_Batch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=50);
            opacity: 0.50;
        }
        .updateProgress
        {
            border-width: 1px;
            border-style: solid;
            background-color: White;
            position: absolute;
            width: 180px;
            height: 65px;
        }
        .black_overlay
        {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 1000px;
            height: 600px;
            background-color: #333;
            z-index: 1001;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=80);
        }
        .white_content
        {
            display: none;
            position: absolute;
            top: 25%;
            left: 35%;
            width: 350px;
            padding: 0px;
            border: 0px solid #a6c25c;
            background-color: white;
            z-index: 1002;
            overflow: auto;
        }
        .headertext
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            color: #f19a19;
            font-weight: bold;
        }
        .textfield
        {
            border: 1px solid #a6c25c;
            width: 200px;
        }
        .button2
        {
            background-color: #a6c25c;
            color: White;
            font-size: 11px;
            font-weight: bold;
            border: 1px solid #7f9db9;
            width: 68px;
        }
        .pnlCSS
        {
            font-weight: bold;
            cursor: pointer;
            border: solid 1px #c0c0c0;
            width: 20%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
 
 <table width="1243" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="943" align="left" valign="top">
             
 <table width="940px" border="0" class="frame" cellspacing="0" cellpadding="5">
            <tr>
              <td colspan="2" align="center">
              <asp:Label ID="Lbheading" runat="server" style="font-weight:bold;font-size:15pt" 
        Text="Import Subscribers" ForeColor="#006666" Font-Bold="True" 
        Font-Names="Arial" Font-Size="14pt"></asp:Label>
              <hr style="color:Gray" />
              </td>
            </tr>
            <tr>
            <td colspan="2" style="color:Red; font-size:11;">
              <asp:Literal ID="lblMessages" runat="server" Text=""></asp:Literal>
            </td>
          </tr>
           <tr>
            <td colspan="2" align="left" style="padding-left:10px;">
               <asp:RadioButton ID="rbUploadfile" runat="server" Text=" Upload a file " Font-Size="14" ForeColor="Black" Checked="false"
                    AutoPostBack="true" GroupName="rb1" OnCheckedChanged="rbUploadfile_CheckedChanged" /><br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label id="lblUfile" runat="server" font-family="Arial" ForeColor="#808080" font-size="Medium">Please upload your list using Excel.</asp:Label>
            </td>
          </tr>
           <tr>
            <td colspan="2" align="left" style="padding-left: 24px; font-size: 12px;">
               <asp:Label ID="Label1" runat="server" ForeColor="green">Please take the mentioned columns in Excelsheet for importing data (eg.,s_email)</asp:Label> 
            <br /><br />
            </td>
          </tr>
           <tr id="trFileUpload" runat="server" visible="false">
           <td align="right"  valign="top" style="font-size:14px; color:Black; width:40%; padding-right:30px;">File<strong>&nbsp;:&nbsp;</strong></td>
            <td align="left" >
               <asp:FileUpload ID="uploadFile" runat="server" /><asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
               <br />
                 <asp:Label id="Label2" runat="server" font-family="Arial" ForeColor="#808080" font-size="Medium">Maximum file size is 10 MB</asp:Label>
            </td>
          </tr>
          
          <tr id="trList" runat="server" visible="false">
           <td align="right" valign="top" style="font-size:14px; color:Black;  padding-right:30px;">Select below Lists to Import<strong>&nbsp;:&nbsp;</strong></td>
            <td align="left">
              <asp:ListBox ID="lbxList" runat="server" Width="150px"></asp:ListBox>
              
              <asp:ListBox ID="lstExcelrecords" runat="server" Width="150px" style="display:none;"></asp:ListBox>
            </td>
          </tr>
         
         <tr>
            <td colspan="2" align="left" style="padding-left:10px;">
            <br />
               <asp:RadioButton ID="rbOnefile" runat="server" Text=" One at a time " Font-Size="14" Checked="false"
                    AutoPostBack="true" GroupName="rb1" OnCheckedChanged="rbOnefile_CheckedChanged" ForeColor="Black" /><br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label id="lblFile" runat="server"  font-family="Arial" ForeColor="#808080" font-size="Medium">Add an individual person<font size="4"> by hand</font></asp:Label> 
            </td>
         </tr>
         <tr>
            <td align="left" style="padding-right:15px;">
               <asp:ImageButton ID="Button1" runat="server"  ImageUrl="~/images/buttons1/Back.png" PostBackUrl='~/Subscribers/Default.aspx' Width="57px" Height="23px" />
              </td>
             <td align="right" style="padding-right:15px;">
               <asp:Button ID="btnContinue" runat="server" Text="Continue.." Font-Size="14px" ForeColor="#006699" BorderWidth="1"
                    onclick="btnContinue_Click" Height="30px" Width="80px" />
              </td>
            </tr>
           <%-- <tr><td colspan="3" align="left" ><asp:Label ID ="lbllcheck" runat="server"  Visible ="false"></asp:Label></td></tr>--%>
        </table>    

                </td>
            </tr>
          </table>
       </div>
    </form>
</body>
</html>
