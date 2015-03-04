<%@ Page Title="" Language="C#" MasterPageFile="~/NexusMasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Register yourself at Indus Nexus</title>
<meta name="description" content="Register yourself now and enjoy the entire benefits provided by Indus Nexus online advertising network."/>
<link href="Css/layout.css" rel="stylesheet" type="text/css"/>
<link href="Css/zero_grid.css" rel="stylesheet" type="text/css"/>
<link href="Css/reset.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function onlyNos(e, t) {
try {
if (window.event) {
    var charCode = window.event.keyCode;
}
else if (e) {
    var charCode = e.which;
}
else { return true; }
if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    return false;
}
return true;
}
catch (err) {
alert(err.Description);
}
}
</script>        
    <style>
.signupmain{ width:1024px; height:auto; border:1px solid #333; margin:0 auto; background:url(images/main-bg.png); }
.signupheading{ height:55px; background:#2995d8; font:24px/55px Georgia, "Times New Roman", Times, serif; color:#FFF; padding-left:20px; }
.middle{ width:850px; height:1500px; margin:20px auto; background:url(images/background.png) no-repeat; }
.signuph3{ text-align:center; width:850px; margin-bottom:25px; font-family:Segoe UI; font-weight:bolder; font-size:24px; font-weight:normal;}
.middle-cont{ width:859px; height:auto; background:url(images/background.png) no-repeat;}
.formsignup{ }
.head{ margin:10px 0 0 0;  height:auto; width:859px; float:left;}
h4{ margin:20px 0 0 25px; color:#e42363; font-family:arial; text-align:center; line-height:35px; font-weight:normal; width:859px;}
.input-forms{ width:444px; margin:12px auto; }
.head p{   width:150px; float:left; font:14px/40px Arial, Helvetica, sans-serif; }
.txtclass{ width:250px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
.drpclass{ width:255px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
.txtclass2{ width:240px; height:30px;   border:1px solid #CCC; background:#d1d4d4;  border-left:4px solid #900127;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="signupmain">
<h2 class="signupheading">Publisher's Registration</h2><div class="middle">
<h3 class="signuph3">Account Information</h3>
<div class="formsignup">
<div class="head"><h4>Site Information</h4>
<div class="input-forms"><p>* Site URL :</p>
<asp:TextBox ID="txtsiteurl" runat="server" class="txtclass" MaxLength="50" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsiteurl" ErrorMessage="Enter Site URL" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
</div>
 <div class="input-forms"><p>* Unique Site Traffic :</p>
 <asp:DropDownList ID="ddlunique" runat="server" class="drpclass">
<asp:ListItem Value="0">Daily Unique Visitors</asp:ListItem>
<asp:ListItem Value="1">less than 1000</asp:ListItem>
<asp:ListItem Value="2">1000-10000</asp:ListItem> 
<asp:ListItem Value="3">10000-1000000</asp:ListItem>
<asp:ListItem Value="4">Above 1 Million</asp:ListItem>  
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="Daily Unique Visitors" ControlToValidate="ddlunique" ErrorMessage="choose unique site" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
 </div>
 <div class="input-forms"><p>Site Category :</p>
 <asp:DropDownList ID="ddlsite2" runat="server" class="drpclass" >
<asp:ListItem Value="0">Select Site Category</asp:ListItem>
<asp:ListItem value="1">Ad networks</asp:ListItem>
<asp:ListItem value="2">Adult</asp:ListItem>
<asp:ListItem  value="3">Adware</asp:ListItem>
<asp:ListItem value="4">Arts</asp:ListItem>
<asp:ListItem value="5">Automotive</asp:ListItem>
<asp:ListItem value="6">Blog/Chat/User-editable</asp:ListItem>
<asp:ListItem value="7">Business/Finance</asp:ListItem>
<asp:ListItem value="8">Career</asp:ListItem>
<asp:ListItem value="9">Children</asp:ListItem>
<asp:ListItem value="10">Classifieds</asp:ListItem>
<asp:ListItem value="11">Dating</asp:ListItem>
<asp:ListItem value="12">Diet/Fitness</asp:ListItem>
<asp:ListItem value="13">Direct Media Exchange</asp:ListItem>
<asp:ListItem value="14">Domainer</asp:ListItem>
<asp:ListItem value="15">Education</asp:ListItem>
<asp:ListItem value="16">email/IM</asp:ListItem>
<asp:ListItem value="17">Entertainment</asp:ListItem>
<asp:ListItem value="18">Family/Parenting</asp:ListItem>
<asp:ListItem value="19">Flowers/Greetings</asp:ListItem>
<asp:ListItem value="20">Free Download</asp:ListItem>
<asp:ListItem value="21">Games</asp:ListItem>
<asp:ListItem value="22">Green/Environment</asp:ListItem>
<asp:ListItem value="23">Health</asp:ListItem>
<asp:ListItem value="24">High Risk Inventory</asp:ListItem>
<asp:ListItem value="25">Hobbies/Leisure/Special interests</asp:ListItem>
<asp:ListItem value="26">Home/Gardening</asp:ListItem>
<asp:ListItem value="27">Information Technology/Webmasters</asp:ListItem>
<asp:ListItem value="28">Men</asp:ListItem>
<asp:ListItem value="29">Movies</asp:ListItem>
<asp:ListItem value="30">MP3 Download</asp:ListItem>
<asp:ListItem value="31">MP3 Search</asp:ListItem>
<asp:ListItem value="32">Multilingual English</asp:ListItem>
<asp:ListItem value="33">Multilingual Non-English</asp:ListItem>
<asp:ListItem value="34">Music</asp:ListItem>
<asp:ListItem value="35">Names/Numbers/Mapping</asp:ListItem>
<asp:ListItem value="36">News</asp:ListItem>
<asp:ListItem value="37">Online Games</asp:ListItem>
<asp:ListItem value="38">P2P - Legal File Sharing</asp:ListItem>
<asp:ListItem value="39">Personal Finance</asp:ListItem>
<asp:ListItem value="40">Pets</asp:ListItem>
<asp:ListItem value="41">Photo/Video sharing</asp:ListItem>
<asp:ListItem value="42">Politics/Law/Government</asp:ListItem>
<asp:ListItem value="43">Prohibited Content</asp:ListItem>
<asp:ListItem value="44">Prohibited Desktop Software</asp:ListItem>
<asp:ListItem value="45">Proxy</asp:ListItem>
<asp:ListItem value="46">Reach</asp:ListItem>
<asp:ListItem value="47">Real Estate</asp:ListItem>
<asp:ListItem value="48">Reference/Dictionary/Literature</asp:ListItem>
<asp:ListItem value="49">Religion/Spirituality</asp:ListItem>
<asp:ListItem value="50">Restaurants/Dining/Food</asp:ListItem>
<asp:ListItem value="51">Science</asp:ListItem>
<asp:ListItem value="52">Search</asp:ListItem>
<asp:ListItem value="53">Shopping</asp:ListItem>
<asp:ListItem value="54">Social networking</asp:ListItem>
<asp:ListItem value="55">Sports</asp:ListItem>
<asp:ListItem value="56">Streaming/Video</asp:ListItem>
<asp:ListItem value="57">Style/Fashion</asp:ListItem>
<asp:ListItem value="58">Technology</asp:ListItem>
<asp:ListItem value="59">Teen</asp:ListItem>
<asp:ListItem value="60">Television</asp:ListItem>
<asp:ListItem value="61">Temporary/Transitional</asp:ListItem>
<asp:ListItem value="62">Travel</asp:ListItem>
<asp:ListItem value="63">Unknown</asp:ListItem>
<asp:ListItem value="64">Weather</asp:ListItem>
<asp:ListItem value="65">Web site pop</asp:ListItem>
<asp:ListItem value="66">Women</asp:ListItem>
</asp:DropDownList></div>
</div>
<div class="head"><h4>Publisher Information</h4>
<div class="input-forms"><p>* First Name :</p>
 <asp:TextBox ID="txtfname" runat="server" class="txtclass" MaxLength="50" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqfname" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter Your FistName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
 </div>
 <div class="input-forms"><p>Last Name :</p>
<asp:TextBox ID="txtlname" runat="server" class="txtclass" MaxLength="50" ></asp:TextBox>
<%--<asp:RequiredFieldValidator ID="required" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter Your LastName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>
</div> 
<div class="input-forms"><p>* Email :</p>
<asp:TextBox ID="txtEmail" runat="server" class="txtclass" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Your Email id" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="regularEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signup" ForeColor="red">*</asp:RegularExpressionValidator>
 </div>
 <%--<div class="input-forms"><p>Phone No :</p>
 <asp:TextBox ID="txtphone" runat="server" class="txtclass" MaxLength="10" onkeypress="return onlyNos(event,this);"></asp:TextBox>
<asp:RequiredFieldValidator ID="reqphone" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Your phone no" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="regexphone" runat="server" ControlToValidate="txtphone" Text="*"
ValidationExpression="[0-9]{10}" ErrorMessage="no special character" ValidationGroup="signup" ForeColor="red"></asp:RegularExpressionValidator>
 </div>--%>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
<ContentTemplate>                                                        
<div class="input-forms"><p>&nbsp;Country :</p>
 <asp:DropDownList ID="ddlcountry" runat="server" class="drpclass" 
onselectedindexchanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true">
</asp:DropDownList>
<%--<asp:RequiredFieldValidator ID="reqcountry" runat="server" ControlToValidate="ddlcountry" InitialValue="--Select Country--" ErrorMessage="Select Your Country" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>
 </div>
 <div class="input-forms"><p>&nbsp;State :</p>
 <asp:DropDownList ID="ddlstate" runat="server" class="drpclass" onselectedindexchanged="ddlstate_SelectedIndexChanged" 
AutoPostBack="true">
</asp:DropDownList>
<%--<asp:RequiredFieldValidator ID="requiredstate" runat="server" ControlToValidate="ddlstate" ErrorMessage="Select Your State" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>
 </div>
 <div class="input-forms"><p>&nbsp;City :</p>
 <asp:DropDownList ID="ddlcity" runat="server" class="drpclass">
</asp:DropDownList>
<%--<asp:RequiredFieldValidator ID="reqcity" runat="server" ControlToValidate="ddlcity" ErrorMessage="Select Your City" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>
 </div>
</ContentTemplate>  </asp:UpdatePanel> 
 <div class="input-forms"><p>Address :</p>
 <asp:TextBox ID="txtadd1" runat="server" class="txtclass" TextMode="MultiLine"></asp:TextBox> 

<%--<asp:RequiredFieldValidator ID="reqadd1" runat="server" ControlToValidate="txtadd1" ErrorMessage="Enter your Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>
 </div>
 <%--<div class="input-forms"><p>Address2 :</p>
<asp:TextBox ID="txtadd2" runat="server" class="txtclass"></asp:TextBox> 
<asp:RequiredFieldValidator ID="reqadd2" runat="server" ControlToValidate="txtadd2" ErrorMessage="Enter your Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                 
</div>--%>
 <div class="input-forms"><p>* ZIP :</p>
<asp:TextBox ID="txtzip" runat="server" class="txtclass" MaxLength="6" onkeypress="return onlyNos(event,this);"></asp:TextBox>
<asp:RequiredFieldValidator ID="requiredzip" runat="server" ControlToValidate="txtzip" ErrorMessage="Enter your zip code" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="reqzip" runat="server" ControlToValidate="txtzip" Text="*"
ValidationExpression="\d{6}" ErrorMessage="Enter valid Zip code" ValidationGroup="signup" ForeColor="red">*</asp:RegularExpressionValidator>
     <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter valid Zip code only" ControlToValidate="txtzip" ValidationGroup="signup" ForeColor="red"
     MinimumValue="00001" MaximumValue="99999">*</asp:RangeValidator>
 </div>
</div>
<div class="head"><h4>Payment Information</h4>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
<ContentTemplate>     
<div class="input-forms"><p>* Payment Method :</p>
<asp:DropDownList ID="ddlpayment" runat="server" class="drpclass" onselectedindexchanged="ddlpayment_SelectedIndexChanged" AutoPostBack="true">
<asp:ListItem>Select Payment</asp:ListItem>
<asp:ListItem>Paypal</asp:ListItem>
<asp:ListItem>Direct Deposit</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="reqpayment" runat="server" ControlToValidate="ddlpayment" ErrorMessage="Choose Your Payment Method" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
 </div>
 <div class="input-forms"><p>* Payee Name :</p>
 <asp:TextBox ID="txtPayable" runat="server" class="txtclass" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqpayable" runat="server" ControlToValidate="txtPayable" ErrorMessage="Enter Your PayeeName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
</div> 
<asp:Panel ID="panel1" runat="server" Visible="false" width="100%" >
 <div class="input-forms"><p>* Bank Name :</p>
 <asp:TextBox ID="txtbank" runat="server" class="txtclass" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqbank1" runat="server" ControlToValidate="txtbank" ErrorMessage="Please Enter Bank Name" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
</div>
 <div class="input-forms"><p>*Bank Addres :</p>
<asp:TextBox ID="txtbankaddr" runat="server" class="txtclass"></asp:TextBox>
<%--<asp:RequiredFieldValidator ID="reqbankaddress" runat="server" ControlToValidate="txtbankaddr" ErrorMessage="Please Enter Bank Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>--%>                                                         
</div>
 <div class="input-forms"><p>*Holder's Name :</p>
 <asp:TextBox ID="txtaccount" runat="server" class="txtclass" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqbankaccount" runat="server" ControlToValidate="txtaccount" ErrorMessage="Please Enter Account Holder Name" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
</div>
 <div class="input-forms"><p>*Account Number :</p>
 <asp:TextBox ID="txtaccountno" runat="server" class="txtclass" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqaccountnumber" runat="server" ControlToValidate="txtaccountno" ErrorMessage="Please Enter Account Number" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
</div>
 <div class="input-forms"><p>* Account Type :</p>
 <asp:DropDownList ID="ddl1" runat="server" 
class="drpclass"  >
<asp:ListItem>Checking</asp:ListItem> 
<asp:ListItem>Savings</asp:ListItem>                                                                                                                              
</asp:DropDownList> 
<asp:RequiredFieldValidator ID="reqaccounttype" runat="server" ControlToValidate="ddl1" ErrorMessage="please choose any AccountType" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
</div>
 <div class="input-forms"><p>* Routing NO/SortCode :</p>
<asp:TextBox ID="Txtrouting" runat="server" class="txtclass"></asp:TextBox>
<asp:RequiredFieldValidator ID="reqrouting" runat="server" ControlToValidate="Txtrouting" ErrorMessage="please Enter Routing" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator> 
</div></asp:Panel></div></ContentTemplate></asp:UpdatePanel> 
 <div class="input-forms"><center style="margin-left:30px;">
     <asp:CheckBox ID="Chkprivacy" runat="server" Checked="true" style="margin-left:50px;" />                                                                 
<%--<input type="checkbox" name="cbPolicy" checked="checked" onclick="AgreeTerms(this,name)" style="margin-left:50px;">--%>
I have read and changed my <a style="color: blue; text-decoration: underline;" href="PrivacyPolicy.aspx">privacy policy </a>&nbsp;And I
agree with the <a style="color: blue; text-decoration: underline;" href="TermsandConditions.aspx" >terms and conditions</a>.
<br/><br/>
<%--<input type="checkbox" name="terms" checked="checked" onclick="AgreeTerms(this,name)">--%>                                                                    
</center></div>
<div class="input-forms">
<center ><asp:Button ID="btn1" runat="server" Text="submit" ValidationGroup="signup" 
onclick="btn1_Click"/>
<asp:ValidationSummary ID="validsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="signup" />
</center></div></div></div></div></div>
</asp:Content>

