<%@ Page Title="" Language="C#" MasterPageFile="NexusMasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="New_FeadBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Indusnexus Affiliate Network | Affiliate Marketing | Leading adnetwork</title>
<meta name="description" content="Easily monitor your online ads. Find the right advertisers and publishers at Indus Nexus and boost your ad performance by targeting the right users"/>
<link href="Css/layout.css" rel="stylesheet" type="text/css"/>
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"/>
<link href="Css/reset.css" rel="stylesheet" type="text/css"/>
<style>
.mymultitextboxclass{max-height:200px;min-height: 70px;max-width:500px;min-width:250px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="body6">
<div class="main zerogrid">
<div style="background:#f0f0f0;">
<div class="about">    
<div class="about_content" >
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="brdr">
<tbody><tr style="text-align:center; "> <td> <h2 style="height:30px; text-align:center;"> Feedback </h2></td></tr>          
<tr><td height="320" align="center" valign="middle"><table width="80%" border="0" cellspacing="0" cellpadding="0">
<tbody><tr><td width="33%" height="126" align="left" valign="top"><table width="60%" border="0" align="center" cellpadding="0" cellspacing="0" class="text14 darkgrey">
</table></td>
<td width="1%" align="center" valign="top" style="background: url(images/split.gif) no-repeat center center;" style="margin-top:10px;"></td>
<td width="33%" align="left" valign="middle" style="width: 66%"><center style="margin-top:10px;">
<table style="width: 99%; height: 182px;" border="0" align="center" cellpadding="0" cellspacing="0" class="text12 darkgrey" style="margin-top:10px;">
<tbody><tr><td class="" align="right"><strong>* Name&nbsp;:</strong></td>
<td align="left">&nbsp;<asp:TextBox ID="txtname" runat="server" MaxLength="50"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Name." ControlToValidate="txtname" ValidationGroup="Group1" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
&nbsp;<span id="reqName" class="star" style="color:Red;display:none;">*</span></td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right"><strong>* Email&nbsp;:</strong></td>
<td align="left">&nbsp;<asp:TextBox ID="txtemail" runat="server" MaxLength="50"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Email." ControlToValidate="txtemail" ValidationGroup="Group1" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Mail." ControlToValidate="txtemail" ValidationGroup="Group1" Text=" " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red" >*</asp:RegularExpressionValidator>
<span id="reqEmail" class="star" style="color:Red;display:none;">*</span>
<span id="revEmail" class="error" style="color:Red;display:none;">Invalid Email</span></td></tr>
<tr><td class="style1" align="right">&nbsp;</td><td align="left">&nbsp;</td></tr>
<tr><td class="style1" align="right"><strong>* Comments&nbsp;:</strong></td>
<td align="left" rowspan="2">&nbsp;
<asp:TextBox ID="txtquery" runat="server" TextMode="MultiLine" Height="70px" Width="250px" CssClass="mymultitextboxclass"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Descrption." ValidationGroup="Group1" ControlToValidate="txtquery" Text=" " ForeColor="red">*</asp:RequiredFieldValidator>
&nbsp;
<span id="RequiredFieldValidator1" class="star" style="color:Red;display:none;">*</span>&nbsp; </td></tr>                       
<tr><td class="style1">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td class="style1">&nbsp;</td><td><table><tbody><tr><td>
<asp:Button ID="btnsubmit" runat="server" Text="Submit" 
ValidationGroup="Group1" onclick="btnsubmit_Click"/>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ValidationGroup="Group1" ShowSummary="false" />
</td><td></td></tr></tbody></table></td></tr></tbody></table></center></td></tr></tbody></table>       
</td></tr></tbody></table></tbody></table>      
</div></div><div class="br"></div></div></div></div>
<script>    (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-57235184-1', 'auto'); ga('send', 'pageview');</script>

</asp:Content>

