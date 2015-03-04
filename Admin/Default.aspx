<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Indusnexus Affiliate Network | Affiliate Marketing | Leading adnetwork</title>
<meta name="description" content="Easily monitor your online ads. Find the right advertisers and publishers at Indus Nexus and boost your ad performance by targeting the right users"/>
<meta name="keywords" content=" CPM CPC Affiliate Networks, Affiliate Program, Affiliate Networks Online Marketing, Internet Advertising, Publisher network,indusnexus, Advertiser network, Pay Per Click, PPC, CPM,CPA"/>
<meta name="robots" content="index, follow">
<meta name="rating" content="General"/>
<meta name="distribution" content="global"/>
<meta name="author" content="http://www.indusnexus.com"/>
<meta name="google-site-verification" content="OvElu1rCtXHDGTLRDAmHtfT5Y99D_e15qA-voy4O1SA"/>
<meta name="msvalidate.01" content="4211B0B553957C37014674E51B0ABB3E"/>
<meta name="alexaVerifyID" content="3LXxqJgk1GZ3vzr1SfR-pjmgKtk"/>
<link rel="canonical" href="http://www.indusnexus.com/"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div  align="center">
    <table width="1012"   height="100" cellpadding="0" cellspacing="0" >
    <tr >
        <td valign="top" align="center" height="12%" width="100%">
      <div class="header">
    <img src="../images/logo.png" alt="0" />
    </div>
    </td>
    </tr>
   <tr>
    <td align="center" valign="top">
    <div class="menubar"></div>    
    </td>
    </tr>
        <tr>
            <td align="Right" valign="top">
             
            </td>
        </tr>
   <tr  width="100%">
   <td valign="top">
   <div class="login-form">

<div class="left2">
<p>Login to Access.....</p>
<img src="images/lock-icon.png" width="120"  height="150" />
</div>
<div class="right2"><br />
<div class="forms2">
<h4>Admin Panel Login</h4>
<table>
<tr>
<td align="center"><asp:Label ID="lbluname"  runat="server" Text="User Name" Width="180px"></asp:Label></td>
<td align="left">  
   <asp:TextBox ID="txtuname" runat="server"  Width="160px" TextMode="SingleLine" CssClass="LoginText" ></asp:TextBox>
  
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtuname" ErrorMessage="Enter UserName" 
        >*</asp:RequiredFieldValidator>
        </td>
</tr>
<tr><td><br /></td></tr>
<tr>

<td align="center"><asp:Label ID="Label1"  runat="server" Text="Password" Width="180px"></asp:Label></td>
<td align="left" style="padding-left:22px">
   <asp:TextBox ID="txtpassword" runat="server"  Width="166px" TextMode="Password"   height="26px"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtpassword" ErrorMessage="Enter Password" 
       >*</asp:RequiredFieldValidator>
 </td>
</tr>
<tr><td><br/></td></tr>
<tr>
                              <td align="right">
                                                         
                                  <asp:CheckBox ID="chkremember" runat="server" />
                                  </td>
                                  <td align="left">
                                  <asp:Label ID="lbl1" runat="server"
                                   Text="Remember Me" 
                                      Font-Names="Bodoni MT" Font-Size="Medium" ForeColor="Black" ></asp:Label></td>
                              </tr>

<tr><td><br /></td></tr>
<tr><td colspan="2" align="center">
 <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#CC3300" 
        BorderColor="#CC3300" ForeColor="White"   Height="30px" Width="70px" 
         onclick="btnlogin_Click" />
         <%--<asp:ValidationSummary ID="ValidationSummary2" runat="server"  ShowSummary="False" ShowMessageBox="True" ValidationGroup="valid"  />--%>
        </td>
        </tr>
        
</table>
</div>
</div>


</div>
   </td>
   </tr> 
   <tr>
   <td><div class="footer">
copyright © 2014 Indusnexus. All right reserved 

</div></td></tr>
    </table>
    </div>
    <script>        (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-57235184-1', 'auto'); ga('send', 'pageview');</script>

    </form>
</body>
</html>
