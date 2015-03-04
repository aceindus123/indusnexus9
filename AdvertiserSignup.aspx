<%@ Page Title="" Language="C#" MasterPageFile="~/NexusMasterPage.master" AutoEventWireup="true" CodeFile="AdvertiserSignup.aspx.cs" Inherits="AdvertiserSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Register yourself at Indus Nexus</title>
<meta name="description" content="Register yourself now and enjoy the entire benefits provided by Indus Nexus online advertising network."/>
<link href="Css/layout.css" rel="stylesheet" type="text/css"/>
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"/>
<link href="Css/reset.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function onlyNos(e, t) {
try {
if (window.event) { var charCode = window.event.keyCode; }
else if (e) { var charCode = e.which; } else { return true; } if (charCode > 31 && (charCode < 48 || charCode > 57)) {
return false;
} return true;
} catch (err) { alert(err.Description); } 
}
</script>
<style>
.signupmain{ width:1024px; height:auto; border:1px solid #333; margin:0 auto; background:url(images/main-bg.png); }
.signupheading{ height:55px; background:#2995d8; font:24px/55px Georgia, "Times New Roman", Times, serif; color:#FFF; padding-left:20px; }
.middle{ width:850px; height:900px; margin:20px auto; background:url(images/advbg.png) no-repeat; vertical-align:middle;}
.signuph3{ text-align:center; width:850px; margin-bottom:25px; font-family:Segoe UI; font-weight:bolder; font-size:24px; font-weight:normal;}
.middle-cont{ width:859px; height:auto; background:url(images/background.png) no-repeat;}
.formsignup{ }
.head{ margin:10px 0 0 0;  height:auto; width:859px; float:left;}
h4{ margin:20px 0 0 25px; color:#e42363; font-family:arial; text-align:center; line-height:35px; font-weight:normal; width:859px;}
.input-forms{ width:444px; margin:12px auto; }
.head p{   width:150px; float:left; font:14px/40px Arial, Helvetica, sans-serif; }
.txtclass{ width:250px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
.drpclass{ width:255px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
.drpclass2{ width:75px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
.txtclass2{ width:170px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <div class="signupmain">
<h2 class="signupheading">Advertiser's Registration</h2>
<div class="middle">
<h3 class="signuph3">Account Information</h3>
<div class="formsignup">
<div class="head">
<div class="input-forms"><p>* First Name:</p>
<asp:TextBox ID="TxtFname" runat="server" class="txtclass"></asp:TextBox>
&nbsp;
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter First Name" Text="*"
             ControlToValidate="TxtFname" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator></div>
 <div class="input-forms"><p>Last Name :</p>
 <asp:TextBox ID="TxtLname" runat="server" class="txtclass"></asp:TextBox>
 &nbsp;
<asp:RequiredFieldValidator ID="ReqLastName" runat="server" ErrorMessage="Please Enter Last Name" Text="*"
             ControlToValidate="TxtLname" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator> 
 </div>
 <div class="input-forms"><p>Company :</p>
 <asp:TextBox ID="TxtCompany" runat="server" class="txtclass"></asp:TextBox>
</div>
<div class="input-forms"><p>URL :</p>
 <asp:DropDownList ID="DdlUrl" runat="server" align="left" CssClass="drpclass2">
<asp:ListItem>http://</asp:ListItem>
<asp:ListItem>https://</asp:ListItem>
</asp:DropDownList>
 <asp:TextBox ID="TxtUrl" runat="server" class="txtclass2"></asp:TextBox>
 <asp:RequiredFieldValidator ID="ReqUrl" runat="server" ErrorMessage="Please Enter URL" Text="*"
             ControlToValidate="TxtUrl" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 &nbsp; <asp:RegularExpressionValidator ID="RegUrl" runat="server"
             ErrorMessage="Please Enter Valid Url" style="color:Red;"
                ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
                Text="*" ControlToValidate="TxtUrl" ValidationGroup="val1"></asp:RegularExpressionValidator>
 </div>
 <div class="input-forms"><p>Email :</p>
<asp:TextBox ID="TxtEmail" runat="server" class="txtclass"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Email Id" Text="*"
             ControlToValidate="TxtEmail" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>          
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
             ErrorMessage="Please Enter Valid Email Id"               
                Text="*" ControlToValidate="TxtEmail" style="color:Red;"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val1"></asp:RegularExpressionValidator>
</div> 
<div class="input-forms"><p>Phone Number :</p>
<asp:TextBox ID="TxtPhNo" runat="server" MaxLength="10" class="txtclass" onkeypress="return onlyNos(event,this);"></asp:TextBox>
            &nbsp;
 <asp:RequiredFieldValidator ID="ReqPhNo" runat="server" ErrorMessage="Please Enter Phone Number" Text="*"
             ControlToValidate="TxtPhNo" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" style="color:Red;"
             ErrorMessage="Please Enter Valid Phone Number" ValidationExpression="[0-9]{10}"               
                Text="*" ControlToValidate="TxtPhNo" ValidationGroup="val1"></asp:RegularExpressionValidator>
                 <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Enter valid Phone Number only" ControlToValidate="TxtPhNo" ValidationGroup="val1" ForeColor="red"
     MinimumValue="0000000001" MaximumValue="9999999999">*</asp:RangeValidator>
                </td>
 </div> 
 <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
<ContentTemplate>                                                        
<div class="input-forms"><p>Country :</p>
 <asp:DropDownList ID="DdlCountry" runat="server" class="drpclass" 
                onselectedindexchanged="DdlCountry_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
<asp:RequiredFieldValidator ID="ReqCountry" runat="server" ErrorMessage="Please Select Country" Text="*"
             ControlToValidate="DdlCountry" InitialValue="Select Country" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 </div>
 <div class="input-forms"><p>State :</p>
  <asp:DropDownList ID="DdlState" runat="server" class="drpclass" 
                onselectedindexchanged="DdlState_SelectedIndexChanged" AutoPostBack="true">          
            </asp:DropDownList>
<asp:RequiredFieldValidator ID="ReqState" runat="server" ErrorMessage="Please Select State" Text="*"
             ControlToValidate="DdlState" InitialValue="Select State" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 </div>
 <div class="input-forms"><p>City :</p>
 <asp:DropDownList ID="ddlcity" runat="server" class="drpclass" >
<asp:ListItem>Select City</asp:ListItem>
 </asp:DropDownList>
 &nbsp;<asp:RequiredFieldValidator ID="ReqCity" runat="server" ErrorMessage="Please Enter City" Text="*"
             ControlToValidate="ddlcity" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 </div>
</ContentTemplate>  </asp:UpdatePanel> 
 <div class="input-forms"><p>Address :</p>
 <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" class="txtclass"></asp:TextBox>
 &nbsp;
<asp:RequiredFieldValidator ID="ReqAddress" runat="server" ErrorMessage="Please Enter Address" Text="*"
  ControlToValidate="TxtAddress" style="color:Red;" ValidationGroup="val1"></asp:RequiredFieldValidator>
 </div>
 
 <div class="input-forms"><p>ZIP :</p>
<asp:TextBox ID="TxtZip" runat="server" class="txtclass" MaxLength="6" onkeypress="return onlyNos(event,this);"></asp:TextBox>
<asp:RequiredFieldValidator ID="requiredzip" runat="server" ControlToValidate="TxtZip" ErrorMessage="Enter your your zip code" ValidationGroup="val1" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="reqzip" runat="server" ControlToValidate="TxtZip" Text="*"
ValidationExpression="\d{6}" ErrorMessage="Enter valid Zip code" ValidationGroup="val1" ForeColor="red">*</asp:RegularExpressionValidator>
 <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter valid Zip code only" ControlToValidate="TxtZip" ValidationGroup="val1" ForeColor="red"
     MinimumValue="00001" MaximumValue="99999">*</asp:RangeValidator>
 </div>    
<div class="input-forms"><p>Advertiser Mode :</p>
<asp:CheckBoxList ID="chk1" runat="server">
 <asp:ListItem>CPM</asp:ListItem>
 <asp:ListItem>CPC</asp:ListItem>
 <asp:ListItem>CPA</asp:ListItem>
</asp:CheckBoxList></div>
 </div> 
 <div class="input-forms"><center style="margin-left:30px;">                                                                 
<asp:CheckBox ID="ChkTerms" runat="server" Checked="true" />                                                                            
       I agree to the <a href="TermsandConditions.aspx" target="_blank">terms and conditions</a></p>                                                          
</center></div>
<div class="input-forms">
<center >
 <br>
<asp:ImageButton ID="ImageButton1" runat="server" ValidationGroup="val1"
     ImageUrl="~/images/register_button.gif" onclick="ImageButton1_Click" />
<asp:ValidationSummary ID="validsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="val1" />
</center>
</div>
<%--<div class="middle-cont">
</div>--%>
</div>
</div>
    </div>
<script>    (function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-57235184-1', 'auto'); ga('send', 'pageview');</script>

</asp:Content>

