<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="adminpublisherEdit.aspx.cs" Inherits="Admin_adminpublisherEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<table align="center"  ><tr><td align="center">
<br /><asp:Label ID="Label2" CssClass="lbHeading" runat="server" Text="Edit Publisher Details"></asp:Label></td>
</tr><tr><td align="center">
<%--<tr>
<td align="center" valign="top" width="100%">--%>
<table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
<tr><td align="left"  style="height: 30px;padding-left:2%;">         
<asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label></td>
<td align="right"  style="height: 30px;padding-right:2%;">
<asp:Button ID="btnBack" runat="server" Font-Size="14px" Height="24px" 
Text="Back" Width="60px" ForeColor="White" Font-Bold="true" 
CssClass="hand" BackColor="#C00000" BorderStyle="None" CausesValidation="false"
onclick="btnBack_Click" /></td>
</tr></table></td></tr><tr><td><asp:Panel ID="pnladvertiserdetails" runat="server">
<table width="926" border="0" align="center" cellpadding="0" cellspacing="0" class="brdr">                        
<tbody><tr> <td height="450" align="center" valign="top">                               
<table width="650px" cellpadding="3" cellspacing="3"><tbody><tr><td style="width: 607px">
<fieldset style="width: 642px" class="border"><legend class="text14 black">Account Information</legend>                 
<center><table border="0" cellpadding="3" cellspacing="3" id="table1"><tbody><tr>
<td colspan="3"><center><span id="lblError" class="text14 red"></span></center>
<br/><asp:Panel ID="pnel1" runat="server" Width="607px" Visible="false">
<table width="100%"><tr style="height:35px;"><td align="left"  style="width: 190px">
<asp:Label ID="Label3" runat="server" Text="User Id" Font-Size="15px"></asp:Label>:
</td><td align="left"><asp:TextBox ID="txtuserid" runat="server" Width="147px"></asp:TextBox></td></tr>
<tr style="height:35px;"><td align="left"  style="width: 190px"><asp:Label ID="lbpwd" runat="server" Text="Password" Font-Size="15px" ></asp:Label>:</td>
<td align="left"><asp:TextBox ID="txtpwd" runat="server" Width="147px"></asp:TextBox>
<asp:RequiredFieldValidator ID="req1" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtpwd" ValidationGroup="val1"></asp:RequiredFieldValidator>
</td></tr></table></asp:Panel></td></tr><tr>
<td colspan="3" align="left" class="heading12 black" height="20" style="background-color:#F0F0F0; padding:10px; font-size:15px; border-radius:5px; color: #ed4800;">
Site Information</td></tr><tr style="margin-top:10px;">
<td style="width: 168px">&nbsp; </td>
<td class="text12 darkgrey" style="width: 181px; margin-top:10px;">
<!-- * required fields-->
</td>
<td style="width: 173px">&nbsp; </td></tr>
<tr style="height:35px;"><td style="width: 168px" class="text14 darkgrey" align="left">
<span id="Span1">* <%--Unique Site Traffic--%><asp:Label ID="Label6" runat="server" Text="Site URL" Font-Size="15px"></asp:Label>:</span>
</td><td style="width:181px">
<asp:TextBox ID="txtsiteurl" runat="server" Width="147px" MaxLength="50" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsiteurl" ErrorMessage="Enter Site URL" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="Span2" class="text14" style="color:Red;display:none;">*</span></td>
<td style="width: 173px; text-align: left"></td></tr>
<tr style="height:35px;"><td style="width: 168px" class="text14 darkgrey" align="left">
<span id="Label1">* <%--Unique Site Traffic--%><asp:Label ID="lblunique" runat="server" Text="Unique Site Traffic" Font-Size="15px"></asp:Label>:</span>
</td><td style="width:181px">
<asp:DropDownList ID="ddlunique" runat="server">
<asp:ListItem Value="0">Daily Unique Visitors</asp:ListItem>
<asp:ListItem Value="1">less than 1000</asp:ListItem>
<asp:ListItem Value="2">1000-10000</asp:ListItem> 
<asp:ListItem Value="3">10000-1000000</asp:ListItem>
<asp:ListItem Value="4">Above 1 Million</asp:ListItem>  
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="ddlunique" ErrorMessage="choose unique site" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="cvUniqueImpressions" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px; text-align: left">
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
&nbsp;&nbsp; <%--Site Category--%> <asp:Label ID="lblsite" runat="server" Text="Site Category" Font-Size="15px"></asp:Label>:
</td>
<td style="width: 181px">
<asp:DropDownList ID="ddlsite2" runat="server" Width="147px">
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
</asp:DropDownList>                                                               

<span id="CustomValidator2" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px; text-align: left">
</td>
</tr>
                                                        
<tr>
<td colspan="3" align="left" class="heading12 black" height="20" style="background-color:#F0F0F0; padding:10px; font-size:15px; border-radius:5px; color: #ed4800">
Publisher Information
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left" style="margin-top:10px;">
* <%--First Name--%><asp:Label ID="lblfname" runat="server" Text="First Name" Font-Size="15px"></asp:Label>:
</td>
<td style="width: 181px">
<%--<input name="txtFirstName" type="text" id="txtFirstName">--%>
<asp:TextBox ID="txtfname" runat="server" Width="147px" MaxLength="50" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqfname" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter Your FistName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="rfvFirstName" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--Last Name--%><asp:Label ID="lbllname" runat="server" Text="Last Name" Font-Size="15px"></asp:Label>:
</td>
<td style="width: 181px">
    <asp:TextBox ID="txtlname" runat="server" Width="147px" MaxLength="50" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="required" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter Your LastName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="rfvLastName" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--Address1--%><asp:label ID="lblEmail" runat="server" Text="Email :" Width="147px"></asp:label>
</td>
<td style="width: 181px">
<%-- <input name="txtAddress1" type="text" id="txtAddress1">--%>
<asp:TextBox ID="txtEmail" runat="server" Width="147px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Your Email id" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="regularEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signup" ForeColor="red">*</asp:RegularExpressionValidator>
<span id="rfvAddress1" class="text14" style="color:Red;display:none;">*</span>

</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr>
<tr style="height:35px;">
<td style="width:168px" class="text14 darkgrey" align="left">
<%--Address2--%>*&nbsp;<asp:label ID="lblphone" runat="server" Text="Phone No :" Width="147px"></asp:label>
</td>
<td style="width: 181px">
<%--<input name="txtAddress2" type="text" id="txtAddress2">--%>
<asp:TextBox ID="txtphone" runat="server" Width="147px" MaxLength="10" ></asp:TextBox>
<asp:RequiredFieldValidator ID="reqphone" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Your phone no" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="regexphone" runat="server" ControlToValidate="txtphone" Text="*"
    ValidationExpression="[0-9]{10}" ErrorMessage="no special character" ValidationGroup="signup" ForeColor="red"></asp:RegularExpressionValidator>
</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr><tr><td colspan="3">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table width="100%">
<tr style="height:35px;">
<td style="width: 168px"  align="left">
*<%-- ZIP--%>&nbsp;<asp:Label ID="lblcountry" runat="server" Text="Country" Font-Size="15px"></asp:Label>&nbsp;:</td>
<td style="width: 181px">
<%-- <input name="txtZip" type="text" id="txtZip">--%>
<asp:DropDownList ID="ddlcountry" runat="server" style="width:147px;" onselectedindexchanged="ddlcountry_SelectedIndexChanged1" 
    AutoPostBack="true">
<asp:ListItem>Select Country</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="reqcountry" runat="server" ControlToValidate="ddlcountry" ErrorMessage="Enter Your Country" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>

<span id="rfvZip" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px; height: 26px;" class="text14 darkgrey" align="left">
* <%--City--%> <asp:Label ID="lblstate" runat="server" Text="State" Font-Size="15px"></asp:Label>&nbsp;:</td>
<td style="width: 181px; height: 26px;">
<%--<input name="txtCity" type="text" id="txtCity">--%>

<asp:DropDownList ID="ddlstate" runat="server" style="width:147px;" 
    onselectedindexchanged="ddlstate_SelectedIndexChanged1" AutoPostBack="true">
    <asp:ListItem>Select State</asp:ListItem>
    <%-- <asp:ListItem>Andhrapradesh</asp:ListItem>
    <asp:ListItem>Telengana</asp:ListItem>
    <asp:ListItem>Tamilnadu</asp:ListItem>--%>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="requiredstate" runat="server" ControlToValidate="ddlstate" ErrorMessage="Enter Your State" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="rfvCity" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px; height: 26px;">&nbsp;
                                                                
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--State--%><asp:Label ID="lblcity" runat="server" Text="City" Font-Size="15px"></asp:Label>:
</td>
<td style="width: 181px">
<%--<input name="txtState" type="text" id="txtState">--%>
<asp:DropDownList ID="ddlcity" runat="server" style="width:147px;">
    <%-- <asp:ListItem>Select City</asp:ListItem>
    <asp:ListItem>Hyderbad</asp:ListItem>--%>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="reqcity" runat="server" ControlToValidate="ddlcity" ErrorMessage="Enter Your City" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>

<span id="rfvState" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px">&nbsp;
                                                                
</td>
</tr>
</table>
</ContentTemplate>
    </asp:UpdatePanel>
</td></tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--Country--%><asp:Label ID="lbladdress1" runat="server" Text="Address1 :" Font-Size="15px"></asp:Label>
</td>
<td style="width: 181px">
                                                                 
<asp:TextBox ID="txtadd1" runat="server" Width="147px"></asp:TextBox> 

<asp:RequiredFieldValidator ID="reqadd1" runat="server" ControlToValidate="txtadd1" ErrorMessage="Enter your Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
</td>
<td style="width: 173px">
<span id="cvCountry" class="text14" style="color:Red;display:none;">*</span>
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--Email--%><asp:Label ID="lbladdr2" runat="server" Text="Address2 :" Font-Size="15px"></asp:Label>
</td>
<td style="width: 181px">
<%--<input name="txtEmail" type="text" id="txtEmail">--%>
<asp:TextBox ID="txtadd2" runat="server" width="147px"></asp:TextBox> 
<asp:RequiredFieldValidator ID="reqadd2" runat="server" ControlToValidate="txtadd2" ErrorMessage="Enter your Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                 
<span id="rfvEmail" class="text14" style="color:Red;display:none;">*</span><br>

</td>
<td style="width: 173px">
<span id="revEmail" class="text14" style="color:Red;display:none;">Invalid EmailId</span>
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
*<%--Phone--%>&nbsp;<asp:Label ID="lblzip" runat="server" Text="ZIP :" Font-Size="15px"></asp:Label>
</td>
<td style="width: 181px">
<%--<input name="txtzip" type="text" id="txtPhone">--%>
<asp:TextBox ID="txtzip" runat="server" width="147px" MaxLength="10"></asp:TextBox>
<asp:RequiredFieldValidator ID="requiredzip" runat="server" ControlToValidate="txtzip" ErrorMessage="Enter  your zip code" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                
<span id="rfvPhone" class="text14" style="color:Red;display:none;">*</span>
</td>
                                                          
</tr>
                                                        
<tr>
<td colspan="3" align="left" class="heading12 black" height="20" style="background-color:#F0F0F0; padding:10px; font-size:15px; border-radius:5px; color: #ed4800">
Payment Information
</td>
</tr>
                                                         
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
* <%--Payment Method--%> <asp:label ID="lblpayment" runat="server" Text="Payment Method :" Width="147px"></asp:label>
</td>
<td style="width:181px">
<%--<select name="ddlPayment" id="ddlPayment" onchange="return PaymentListOnChanged()" style="width:173px;">
<option value="0">Select Payment</option>
<option value="4">Paypal</option>
<option value="1">Skrill (Money Bookers)</option>
<option value="8">Direct Deposit</option>
<option value="9">BitCoin</option>

</select>  --%>
<asp:DropDownList ID="ddlpayment" runat="server" Width="147px" onselectedindexchanged="ddlpayment_SelectedIndexChanged">
<asp:ListItem>Select Payment</asp:ListItem>
<asp:ListItem>Paypal</asp:ListItem>
<asp:ListItem>Direct Deposit</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="reqpayment" runat="server" ControlToValidate="ddlpayment" ErrorMessage="Choose Your Payment Method" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="cvPaymentMode" class="text14" style="color:Red;display:none;">*</span>
</td>
<td style="width: 173px">
</td>
</tr>
<tr style="height:35px;">
<td style="width: 168px" class="text14 darkgrey" align="left">
<span id="lblPayable" style="visibility: visible;">*<%--Payee Name--%>&nbsp;<asp:label ID="lblpayeename" runat="server" Text="Payee Name" Font-Size="15px"></asp:label>:</span>
</td>
<td style="width: 181px">
<%--  <input name="txtPayable" type="text" id="txtPayable" style="visibility: visible;">--%>
<asp:TextBox ID="txtPayable" runat="server" Width="147px"></asp:TextBox>
<asp:RequiredFieldValidator ID="reqpayable" runat="server" ControlToValidate="txtPayable" ErrorMessage="Enter Your PayeeName" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>
<span id="cvtxtPayable" class="text14" style="color:Red;display:none;">*</span>
</td>
                                                          
</tr>
                                                         
<tr>
<td colspan="2" >
<asp:Panel ID="panel1" runat="server" Visible="false">
<table>
<tr>
    <td align="left" style="font-size:15px;">
    <asp:Label id="lblbank" runat="server" Text="Bank Name:"></asp:Label>
                                                                 
    </td>
    <td>
    <asp:TextBox ID="txtbank" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqbank1" runat="server" ControlToValidate="txtbank" ErrorMessage="Please Enter Bank Name" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
    </td> &nbsp;&nbsp;
                                                               
</tr>
<tr><td></td><td></td></tr>
<tr>
    <td align="left" style="font-size:15px;">
                                                                   
    <asp:Label ID="lblbankaddr" runat="server" Text="Bank Addres:"></asp:Label>
                                                                                                      
                                                                   
    </td>
    <td>
        <asp:TextBox ID="txtbankaddr" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqbankaddress" runat="server" ControlToValidate="txtbankaddr" ErrorMessage="Please Enter Bank Address" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
                                                                   
    </td>
                                                               
</tr> 
<tr><td></td><td></td></tr>
<tr>
<td  align="left" style="font-size:15px;">
                                                                
<asp:Label ID="lblaccount" runat="server"  Text="Account Holder's Name:" ></asp:Label>                                                         
                                                                
    </td>
<td>
    <asp:TextBox ID="txtaccount" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqbankaccount" runat="server" ControlToValidate="txtaccount" ErrorMessage="Please Enter Account's Holder Name" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         

</td>
                                                               
</tr>
<tr><td></td><td></td></tr>
<tr> 
                                                               
<td  align="left" style="font-size:15px;">
    <asp:Label ID="lblaccountno" runat="server" Text="Account Number :"></asp:Label>
                                                               
</td>
<td>
    <asp:TextBox ID="txtaccountno" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqaccountnumber" runat="server" ControlToValidate="txtaccountno" ErrorMessage="Please Enter Account Number" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         
                                                               
</td>
                                                               
                                                               
</tr>
<tr><td></td><td></td></tr>

<tr>
    <td  align="left" style="font-size:15px;">
    <asp:Label ID="Label4" runat="server" Text="Account Type :"></asp:Label>   
                                                                 
    </td>
<td>
    <asp:DropDownList ID="ddl1" runat="server" 
        width="128px"  >
    <asp:ListItem>Checking</asp:ListItem> 
    <asp:ListItem>Savings</asp:ListItem>
                                                                                                                              
    </asp:DropDownList> 
    <asp:RequiredFieldValidator ID="reqaccounttype" runat="server" ControlToValidate="ddl1" ErrorMessage="please choose any AccountType" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator>                                                         


</td> 
                                                                                                                              
</tr>

<tr><td></td><td></td></tr>
<tr>
<td align="left" style="font-size:15px;">
<asp:Label ID="Label5" runat="server" Text="Routing Number/SortCode :"></asp:Label> 
</td>
<td>
    <asp:TextBox ID="Txtrouting" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="reqrouting" runat="server" ControlToValidate="Txtrouting" ErrorMessage="please Enter Routing" ValidationGroup="signup" ForeColor="red">*</asp:RequiredFieldValidator> 
</td>
</tr>
</table>
</asp:Panel>                                                           
</td>                                                        
</tr>                                                      
<tr>
<td colspan="3" align="center" class="text14 darkgrey"> 
<center style="margin-left:30px;">
                                                                 
    <input type="checkbox" name="cbPolicy" checked="checked" onclick="AgreeTerms(this,name)" style="margin-left:50px;"/> &nbsp;
    I have read and changed my privacy policy 
    <br/><br/>
    <input type="checkbox" name="terms" checked="checked" onclick="AgreeTerms(this,name)"/> &nbsp;I
    agree with the terms and conditions
                                                                    
    </center>
</td>
</tr>
<tr id="trupdate" runat="server"><td  colspan="2" align="center">
<asp:Button ID="btnupdate" runat="server" ValidationGroup="signup" 
    Text="Update" onclick="btnupdate_Click" />&nbsp;&nbsp;
    <asp:Button ID="btncreate" runat="server" Text="Create" 
    ValidationGroup="signup" onclick="btncreate_Click" />
    <asp:Button ID="Btnsend" runat="server" Text="Send Login Details" onclick="Btnsend_Click" ValidationGroup="val1" 
        />
<asp:Button ID="Editreset" runat="server" Text="Cancel" 
    onclick="Editreset_Click"   />
</td></tr>
                                                       
<tr id="prvalidsummary" runat="server">
<td><asp:ValidationSummary ID="validsummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="signup" /></td>
                                                        
</tr>
</tbody></table>
&nbsp;
</center>
</fieldset>
</td>
</tr>
</tbody></table>
<br/>
<br/>

<script language="javascript" type="text/javascript">
visibility();
CountryListOnChanged();
PaymentListOnChanged();
</script>
<br/>
<br/>
<br/>

</td>
</tr>
</tbody></table>
</asp:Panel>   
</td></tr>



</table>
                   
</asp:Content>

