<%@ Page Title="" Language="C#" MasterPageFile="NexusMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Indus Nexus Login Details </title>
<meta name="description" content="Login now and explore our exclusive ad network platform." />

<link href="Css/layout.css" rel="stylesheet" type="text/css"  />
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"  />
<link href="Css/reset.css" rel="stylesheet" type="text/css"  />
<link href="Css/StyleSheet.css" rel="stylesheet" type="text/css"  />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="playing/js/jquery.slides.min.js" src="js/jquery.slides.min.js"></script>
<script>
$(function () {
$('#slides').slidesjs({
width: 940,
height: 528,
play: {
active: true,
auto: true,
interval: 4000,
swap: true
}
});
});
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="body6">
<div class="main zerogrid">
<div style="background:#f0f0f0;">
<div class="about">    
<div class="about_content" >
<table width="1000" border="0" cellspacing="0" cellpadding="0">
<tbody><tr><td height="400" colspan="2" align="center" valign="top" class="midbg"><table width="40%" border="0" cellspacing="0" cellpadding="0" >
<tbody><tr><td height="35"></td>
</tr><tr><td height="45" align="left" valign="middle" style=""><strong style="text-align:center; "> <h2> LOGIN  </h2> </strong></td>
</tr><tr><td height="25" align="left" valign="middle"  class="blue text13" style="padding-left:5px; border:solid 1px #A9E1EB; background:#2995d8;"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="text12 black">
<tbody><tr><td></td></tr></tbody></table></td></tr>
<tr><td height="25" align="left" valign="middle" class="blue text13" style="padding-left:5px; border:solid 1px #E0E0E0;">
<table width="100%" border="0" cellspacing="0" cellpadding="4" class="text11 grey">
<tbody><tr><td height="10" colspan="2" align="right" valign="middle" style="padding:0px;">
</td></tr><tr><td width="22%" height="20" align="right" valign="middle">
<span class="user"> Username : &nbsp;</span></td>
<td width="78%" align="left" valign="middle"> 
<asp:TextBox ID="TxtUname" runat="server" style="width:200px;" MaxLength="50"></asp:TextBox>
<asp:RequiredFieldValidator ID="ReqUname" runat="server" ErrorMessage="Please Enter User Name" Text="*" ValidationGroup="val1" ControlToValidate="TxtUname"></asp:RequiredFieldValidator>
</td></tr><tr><td height="10"></td></tr>                   
<tr><td height="20" align="right" valign="middle"><span class="user"> Password : &nbsp;</span> </td>
<td align="left" valign="middle">
<asp:TextBox ID="Txtpwd" runat="server"  style="width:200px;" TextMode="Password" MaxLength="50"></asp:TextBox> 
<asp:RequiredFieldValidator ID="Reqpwd" runat="server" ErrorMessage="Please Enter Password" ValidationGroup="val1" ControlToValidate="Txtpwd" Text="*"></asp:RequiredFieldValidator>                     
</td></tr><tr><td height="10"></td></tr>
<tr><td height="20" align="right" valign="middle">&nbsp;</td><td align="left" valign="middle">                      
<asp:Button ID="BtnLogin" runat="server" Text="Login" 
    onclick="BtnLogin_Click" ValidationGroup="val1" /></td></tr><tr><td height="10"></td></tr><tr>
<td height="20" align="right" valign="middle">&nbsp;</td>
<td align="left" valign="middle" style="font-size:12px;"> <a href="Forgotpwd.aspx">Forgot Password?</a></td></tr>
<tr><td height="20" align="right" valign="middle">&nbsp;</td></tr>
<tr><td height="10" colspan="2" align="right" valign="middle" style="padding:0px;">&nbsp;</td></tr>
</tbody></table></td></tr></tbody></table></td>
</tr></tbody></table>  
</div></div><div class="br"></div>
<asp:ValidationSummary ID="ValidSummary" runat="server" ValidationGroup="val1" ShowMessageBox="true" ShowSummary="false" />
</div></div></div>
<script>    (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-57235184-1', 'auto'); ga('send', 'pageview');</script>

</asp:Content>

