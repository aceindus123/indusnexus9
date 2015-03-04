<%@ Page Title="" Language="C#" MasterPageFile="~/NexusMasterPage.master" AutoEventWireup="true" CodeFile="Forgotpwd.aspx.cs" Inherits="Forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>About Indus Nexus | Online Advertising Solutions | Ad revenues</title>
<meta name="description" content="Indus Nexus provides a logical platform to bridge the gap between advertisers and publishers, and use the online ad network profitably."/>
<link href="Css/layout.css" rel="stylesheet" type="text/css"/>
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"/>
<link href="Css/reset.css" rel="stylesheet" type="text/css"/>
<style>
.total{ width:1000px; height:auto; margin-top:30px; padding:0px;}
.forgot1{ float:left; width:250px; height:300px; text-align:center; position:relative; margin-top:70px; margin-left:120px; }
.forgot2{ float:left; width:390px; height:300px; background:#e7f2fd; margin-bottom:30px;}
.forgot2 h1{ background:#d83d91; height:35px; text-align:center;
 font-family:Arial, Helvetica, sans-serif; font-size:20px; margin:0px; color:#FFF; padding-top:15px;}  
.forgot2h3{ background:#2995d8; height:35px; margin-top:32px;} 
.middle_forgot { width:390px; height:200px; text-align:center; color:#333; padding-top:40px; font-size:13px; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="body6">
<div class="main zerogrid">
<div style="background:#f0f0f0;">
<div class="about">
<div class="about_content" >
<table width="100%">
<tr>
<td align="center">
<div class="forgot1">
<img src="images/forgotpassword.jpg" width="195" height="163"  />
</div>
</td>
<td valign="top">
<div class="forgot2">
<h1> Forgot Your Password</h1>
<div class="middle_forgot">
Don't worry! just fill in your emai and we'll help you to reset your password. <br />  <br /> 
<br />
    Email Address:  
    <asp:TextBox ID="TextBox1" runat="server" placeholder=" Enter your Email Address" ></asp:TextBox>

<br />
<br />
    <asp:Button ID="Button1" runat="server" Text="Send" style="background:#d83d91; color:#FFF; width:75px; height:30px;" class="forgot2h3"  />
 
  <h3 class="forgot2h3" ></h3>
</div>


</div>
</td>
</tr>
</table>
<br />
</div> 
</div>    
<div class="br"></div>    
</div>
</div>
</div>
</asp:Content>

