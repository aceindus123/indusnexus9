<%@ Page Title="" Language="C#" MasterPageFile="NexusMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Indus Nexus Contact details</title>
<meta name="description" content="For any ad related queries, you can contact our team and get your queries solved."/>
<link href="Css/layout.css" rel="stylesheet" type="text/css"/>
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"/>
<link href="Css/reset.css" rel="stylesheet" type="text/css"/>
<style>
.mymultitextboxclass{max-height:80px;min-height: 70px;max-width:400px;min-width:150px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="body6">
<div class="main zerogrid">
<div style="background:#f0f0f0;">
<div class="about">    
<div class="about_content" style="height:300px;" >    
<table  width="100%" >
<tr style="text-align:center; "> <td> <h2 style="height:30px; text-align:center;"> Contact Us </h2></td></tr>
</table>
<div class="newclass" style="width:50%; float:left; ">
<strong style="font-size:16px;"> Global Head Quarters - USA </strong> <br />
Indus Nexus, <br />
1033 Sterling Road, Ste. 204 & 205,<br />
Herndon-VA-20170. USA.<br />
Washington DC Metro Area.<br /><br />
For cooperation requests 	 :  <a href="mailto:info@igiit.net?subject=Info"><font color="#FF0000"> info@indusnexus.com </font></a> <br />

</div>
<div style="width:40%; float:left; text-align:center; ">
<table width="80%" border="0" cellpadding="0" cellspacing="0" style="float:left;">
<tbody>    
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="brdr">
<tbody>        
<tr>
<td height="250" align="center" valign="middle">
<br /><br /><table width="80%" border="0" cellspacing="0" cellpadding="0">
<tbody><tr><td width="1%" align="center" valign="top" style="background: url(images/split.gif) no-repeat center center;" style="margin-top:10px;"></td>
<td align="left" valign="middle" style="width: 70%"><center style="margin-top:10px;">
<table style="width: 99%; height: 200px;" border="0" align="center" cellpadding="0" cellspacing="0" class="text12 darkgrey" style="margin-top:10px;">
<tbody><tr ><td  align="right" style="height:10px;"><strong>* Name&nbsp;:</strong></td>
<td align="left">&nbsp;
<asp:TextBox ID="txtname" runat="server" MaxLength="50"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your Name." ControlToValidate="txtname" ValidationGroup="Group1" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
</td></tr>
<tr><td align="right">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td  align="right"><strong>* Email&nbsp;:</strong></td>
<td align="left">&nbsp;
<asp:TextBox ID="txtemail" runat="server" MaxLength="50" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Email." ControlToValidate="txtemail" ValidationGroup="Group1" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Mail." ControlToValidate="txtemail" ValidationGroup="Group1" Text=" " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red" >*</asp:RegularExpressionValidator>
</td></tr>
<tr><td  align="right">&nbsp;</td>
<td align="left">&nbsp;</td></tr>
<tr><td  align="right"><strong>* Query&nbsp;:</strong></td>
<td align="left">&nbsp;
<asp:TextBox ID="txtquery" runat="server" TextMode="MultiLine" CssClass="mymultitextboxclass" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Descrption." ValidationGroup="Group1" ControlToValidate="txtquery" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
&nbsp; </td></tr>                    
<tr><td >&nbsp;</td>
<td><table><tbody><tr>
<td><asp:Button ID="btnsubmit" runat="server" Text="Submit" 
ValidationGroup="Group1" onclick="btnsubmit_Click"/>
<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true" ValidationGroup="Group1" ShowSummary="false" />
</td><td></td></tr></tbody></table></td></tr></tbody></table></center></td></tr>                
</tbody></table></td></tr></tbody></table></tbody></table>
</div></div></div></div></div></div>
<script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-57235184-1', 'auto'); ga('send', 'pageview');</script>
</asp:Content>

