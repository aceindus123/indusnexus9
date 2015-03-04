<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="AdminCpmEdit.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<table align="center"  >
<tr>
<td align="center">
<br />
<asp:Label ID="Label2" CssClass="lbHeading" runat="server" Text="Edit User Details"></asp:Label></td>
</tr>
<tr><td align="center">
<%--<tr>
<td align="center" valign="top" width="100%">--%>
<table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
<tr>
<td align="left"  style="height: 30px;padding-left:2%;">
         
<asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
</td>
<td align="right"  style="height: 30px;padding-right:2%;">
<asp:Button ID="btnBack" runat="server" Font-Size="14px" Height="24px" 
Text="Back" Width="60px" ForeColor="White" Font-Bold="true" 
CssClass="hand" BackColor="#C00000" BorderStyle="None" CausesValidation="false"
onclick="btnBack_Click" /></td>
</tr></table>    
</td>
</tr>
<tr><td>   
<asp:Panel ID="pnladvertiserdetails" runat="server">
<table width="926" border="0" align="center" cellpadding="0" cellspacing="0" class="brdr">                        
<tbody><tr><td height="400" align="center" valign="top">
<table align="center" border="0" width="650" cellspacing="3" cellpadding="3">
<tbody><tr><td>
<fieldset style="width: 650px ;" class="border" >
<legend class="text14 darkgrey">Account Information</legend>
<span id="lblError" class="error"></span><br>
<table width="650" height="424" border="0" align="center" cellpadding="3" cellspacing="3" >
<tbody><tr><td colspan="3"><center>
<span id="Span1" class="text14 red"></span></center><br/>
<asp:Panel ID="pnel1" runat="server" Width="607px">
<table width="100%"><tr style="height:35px;"><td align="left"  style="width: 205px">
<asp:Label ID="Label3" runat="server" Text="User Id" Font-Size="15px"></asp:Label>:
</td><td align="left"><asp:TextBox ID="txtuserid" runat="server" Width="147px" ></asp:TextBox></td></tr>
<tr style="height:35px;"><td align="left"  style="width: 190px"><asp:Label ID="lbpwd" runat="server" Text="Password" Font-Size="15px" ></asp:Label>:</td>
<td align="left"><asp:TextBox ID="txtpwd" runat="server" Width="147px"></asp:TextBox>
<asp:RequiredFieldValidator ID="req1" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtpwd" ValidationGroup="val2"></asp:RequiredFieldValidator>
</td></tr></table></asp:Panel></td></tr>
<tr style="height:35px;">
<td style="width: 227px" align="left" height="25">
<p class="right1" id="P3">
*&nbsp;FirstName:&nbsp;&nbsp;</p></td><td style="height: 27px" align="left">
<asp:TextBox ID="TxtFname" runat="server" Width="147px" ></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="ReqFname" runat="server" ErrorMessage="Please Enter First Name" Text="*"
ControlToValidate="TxtFname" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>          
</td></tr>
<tr style="height:35px;"><td style="width: 227px" align="left" height="25">
<p class="right1" id="P2">*&nbsp;LastName:&nbsp;&nbsp;</p></td>
<td height="27" align="left" ><asp:TextBox ID="TxtLname" runat="server"></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="ReqLastName" runat="server" ErrorMessage="Please Enter Last Name" Text="*"
ControlToValidate="TxtLname" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator></td>
</tr><tr style="height:35px;"><td style="width: 227px" align="left" height="25">
<p class="right1" id="P4">*&nbsp;Company:&nbsp;&nbsp;</p>
</td><td align="left"><asp:TextBox ID="TxtCompany" runat="server"></asp:TextBox></td></tr>
<tr style="height:35px;"><td style="width: 227px" align="left" height="25">
<p class="right1" id="lblUrl">
*&nbsp;URL:&nbsp;&nbsp;</p></td>
<td height="27" align="left"><asp:DropDownList ID="DdlUrl" runat="server" align="left" style="height:25px;width:65px;">
<asp:ListItem>http://</asp:ListItem>
<asp:ListItem>https://</asp:ListItem>
</asp:DropDownList>           
<asp:TextBox ID="TxtUrl" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="ReqUrl" runat="server" ErrorMessage="Please Enter URL" Text="*"
ControlToValidate="TxtUrl" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
&nbsp;
<asp:RegularExpressionValidator ID="RegUrl" runat="server"
ErrorMessage="Please Enter Valid Url" style="color:Red;"
ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
Text="*" ControlToValidate="TxtUrl" ValidationGroup="val1"></asp:RegularExpressionValidator>
</td></tr><tr style="height:35px;">
<td style="width: 227px; height: 27px;" align="left">
<p class="right1" id="lblEmail">
*&nbsp;Email:&nbsp;&nbsp;</p>
</td><td align="left" style="height: 27px">
<asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="ReqEmail" runat="server" ErrorMessage="Please Enter Email Id" Text="*"
ControlToValidate="TxtEmail" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>          
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
ErrorMessage="Please Enter Valid Email Id"               
Text="*" ControlToValidate="TxtEmail" style="color:Red;"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val1"></asp:RegularExpressionValidator>
       
<br/>

                
           
           
</td>
</tr>
<tr style="height:35px;">
<td style="width: 227px; height: 25px" align="left">
<p class="right1" id="lblPhonenumber">
*&nbsp;Phone Number:&nbsp;&nbsp;</p>
</td>
<td style="height: 27px" align="left">
<asp:TextBox ID="TxtPhNo" runat="server" MaxLength="10" 
onkeypress="return onlyNos(event,this);" ></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="ReqPhNo" runat="server" ErrorMessage="Please Enter Phone Number" Text="*"
ControlToValidate="TxtPhNo" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" style="color:Red;"
ErrorMessage="Please Enter Valid Phone Number" ValidationExpression="[0-9]{10}"               
Text="*" ControlToValidate="TxtPhNo" ValidationGroup="val1"></asp:RegularExpressionValidator>
       
</td>
</tr>
<tr><td colspan="2">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table width="100%">
<tr style="height:35px;">
<td style="width: 227px; height: 27px;" align="left">
<p class="right1" id="lblCountry">
*&nbsp;Country:&nbsp;&nbsp;</p>
</td>
<td align="left" style="height: 27px">
<asp:DropDownList ID="DdlCountry" runat="server" Width="149" onselectedindexchanged="DdlCountry_SelectedIndexChanged" AutoPostBack="true">
<asp:ListItem>Select Country</asp:ListItem>
</asp:DropDownList>
           
<asp:RequiredFieldValidator ID="ReqCountry" runat="server" ErrorMessage="Please Select Country" Text="*"
ControlToValidate="DdlCountry" InitialValue="Select Country" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
           
</td>
</tr>
<tr style="height:35px;">
<td style="width: 227px" align="left" height="25">
<p class="right1" id="lblState">
*&nbsp;State:&nbsp;&nbsp;</p>
</td>
<td height="27" align="left">
<asp:DropDownList ID="DdlState" runat="server" Width="149"
onselectedindexchanged="DdlState_SelectedIndexChanged" AutoPostBack="true">           
            
</asp:DropDownList>
<asp:RequiredFieldValidator ID="ReqState" runat="server" ErrorMessage="Please Select State" Text="*"
ControlToValidate="DdlState" InitialValue="Select State" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
</td>
</tr>
    
<tr style="height:35px;">
<td style="width: 227px; height: 26px;" align="left">
<p class="right1" id="lblCity">
*&nbsp;City:&nbsp;&nbsp;</p>
</td>
<td align="left" style="height: 26px">
<asp:DropDownList ID="ddlcity" runat="server" Width="149">
<asp:ListItem>Select City</asp:ListItem>
<%-- <asp:ListItem Value="0">Hyderabad</asp:ListItem>
<asp:ListItem Value="1">vijayawada</asp:ListItem>--%>
</asp:DropDownList>
&nbsp;
<asp:RequiredFieldValidator ID="ReqCity" runat="server" ErrorMessage="Please Select City" Text="*"
ControlToValidate="ddlcity" style="color:Red;" ValidationGroup="val1" InitialValue="Select City"></asp:RequiredFieldValidator>
            
</td>
</tr>
</table>
</ContentTemplate>
    </asp:UpdatePanel>
</td></tr>
<tr style="height:35px;">
<td style="width: 227px" align="left" height="35">
<p class="right1" id="lblAddress">
*&nbsp;Address:&nbsp;&nbsp;</p>
</td>
<td height="35" align="left">
<asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="ReqAddress" runat="server" ErrorMessage="Please Enter Address" Text="*"
ControlToValidate="TxtAddress" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
<span id="AddressUI1_reqAddress" class="star" style="color:Red;display:none;">*</span>
</td>
</tr>
<tr style="height:35px;">
<td style="width: 227px" align="left" height="25">
<p class="right1" id="lblZip">
*Zip:&nbsp;&nbsp;</p>
</td>
<td height="27" align="left">
<asp:TextBox ID="TxtZip" runat="server" MaxLength="6" onkeypress="return onlyNos(event,this);"></asp:TextBox>
<asp:RegularExpressionValidator ID="reqzip" runat="server" style="color:Red;"
ErrorMessage="Please Enter Valid Zip" ValidationExpression="\d{6}"               
Text="*" ControlToValidate="TxtZip" ValidationGroup="val1"></asp:RegularExpressionValidator>
            
</td>
</tr>
    
<tr style="height:35px;">
<td style="width: 227px" align="left" height="25">
<p class="right1" id="P1">
*Advertiser Mode:&nbsp;&nbsp;</p>
</td>
<td align="left">            
<asp:CheckBoxList ID="chk1" runat="server"  style="margin-left:5px;">
<asp:ListItem>CPM</asp:ListItem>
<asp:ListItem>CPC</asp:ListItem>
<asp:ListItem>CPA</asp:ListItem>
</asp:CheckBoxList> 
           
</td>
</tr>
</tbody></table>

<table width="650" border="0" align="center" cellpadding="3" cellspacing="3" id="table3">
<tbody><tr>
                                                                    
<td height="25">
<p class="text14 darkgrey" style="text-align: center">
<asp:CheckBox ID="ChkTerms" runat="server" Checked="true" />
I agree to the 
terms and conditions</p>
</td>
                                                                    
</tr>
<tr ID="trupdate" runat="server">
<td align="center" colspan="2">
<asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
Text="Update" ValidationGroup="val1" />
&nbsp;&nbsp;
<asp:Button ID="btncreate" runat="server" onclick="btncreate_Click" 
Text="Create" ValidationGroup="val1" />
<asp:Button ID="Btnsend" runat="server" onclick="Btnsend_Click" ValidationGroup="val2"
Text="Send Login Details" />
<asp:Button ID="Editreset" runat="server" onclick="btnreset_Click" 
Text="Cancel" />
</td>
</tr>
<tr>
<td>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" 
ShowMessageBox="true" ShowSummary="false" ValidationGroup="val1" />
</td>
</tr>
                                                                    
</tbody></table>
</fieldset>
</td>
</tr>
</tbody></table>
<br>
<br>

                                
<br>
<br>
<br>

</td>
</tr>
</tbody></table>
</asp:Panel>   
</td></tr>



</table>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-57235184-1', 'auto');
    ga('send', 'pageview');

</script>
</asp:Content>

