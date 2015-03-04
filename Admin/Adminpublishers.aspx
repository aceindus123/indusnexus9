<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="Adminpublishers.aspx.cs" Inherits="Admin_Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Indusnexus Affiliate Network | Affiliate Marketing | Leading adnetwork</title>
<meta name="description" content="Easily monitor your online ads. Find the right advertisers and publishers at Indus Nexus and boost your ad performance by targeting the right users" />
<meta name="keywords" content=" CPM CPC Affiliate Networks, Affiliate Program, Affiliate Networks Online Marketing, Internet Advertising, Publisher network,indusnexus, Advertiser network, Pay Per Click, PPC, CPM,CPA" />
<meta name="robots" content="index, follow"/>
<meta name="rating" content="General" />
<meta name="distribution" content="global" />
<meta name="author" content="http://www.indusnexus.com" />
<meta name="google-site-verification" content="OvElu1rCtXHDGTLRDAmHtfT5Y99D_e15qA-voy4O1SA" />
<meta name="msvalidate.01" content="4211B0B553957C37014674E51B0ABB3E" />
<meta name="alexaVerifyID" content="3LXxqJgk1GZ3vzr1SfR-pjmgKtk"/> 
<link rel="canonical" href="http://www.indusnexus.com/" />
 <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" /> 
 <style>
   .body
   {
   	font-size:17px;
   	text-decoration:none;
   }
   .body2
   {
   	font-size:14px;
   	font-weight:bold;
   }
 
</style>      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" width="100%" >
    <tr>
    <td align="center">
    <br />
        <asp:Label ID="Label1" CssClass="lbHeading" runat="server" Text="Publisher Details"></asp:Label></td>
    </tr>
    <tr>
    <td align="left">
    <asp:TextBox ID="txtSearch" runat="server" Width="230px" Height="30px" ></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="txtwtrsearch" runat="server" TargetControlID="txtSearch" 
        WatermarkCssClass="SearchStyle" WatermarkText="Seach By Name or Email or Id No" >
        </cc1:TextBoxWatermarkExtender>
     <asp:Button ID="btnsearch" runat="server" Text="Search" 
            onclick="btnsearch_Click" />
    </td>
    </tr>
     <tr>
    <td align="right">
    <br />
    <table align="left" width="400px"><tr>
    <td>
    <asp:LinkButton ID="lnkwaiting" runat="server" Text="Waiting" CssClass="stslinks" 
            onclick="lnkwaiting_Click" ></asp:LinkButton>
    </td>
    <td>
    <asp:LinkButton ID="lnkActive1" runat="server" Text="Active" CssClass="stslinks" 
            onclick="lnkActive1_Click" ></asp:LinkButton>
    </td>
    <td> 
    <asp:LinkButton ID="lnksuspend" runat="server" Text="Suspend" CssClass="stslinks" 
            onclick="lnksuspend_Click" ></asp:LinkButton>
    </td>
    <td>
    <asp:LinkButton ID="lnkDecline1" runat="server" Text="Decline" CssClass="stslinks" 
            onclick="lnkDecline1_Click" ></asp:LinkButton>
    </td>
    <td>
    
      
    </td>
    </tr></table>
    <asp:Button ID="btnaddnew" runat="server" Text="Add New" 
            onclick="btnaddnew_Click" /></td>
    </tr>
    <tr><td align="center">
    <asp:Label ID="lbnorecords" runat="server" Text="No Records Found" CssClass="lbHeading" Visible="false" ></asp:Label>
    <asp:GridView id="gridview1" DataKeyNames="Uid" runat="server" EmptyDataRowStyle-ForeColor="Red" 
         AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" AllowPaging="True" PageSize="10"
          OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" BackColor="White" 
          BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="990px" OnRowDeleting="gvEG_RowDeleting">

<EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>

        <FooterStyle BackColor="#6B859D" ForeColor="#003399" />
        <HeaderStyle BackColor="#3C6387" Font-Bold="True" ForeColor="#FFFFFF" Height="30px" BorderColor="Black"  
        BorderStyle="Solid" BorderWidth="1px"  />
<PagerStyle ForeColor="#000000" HorizontalAlign="Center" BackColor="#FFFFFF" 
                                                    BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1" />   
        <Columns> 
        <asp:TemplateField HeaderText="Id" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("Uid") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Name" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblFname" runat="server" Text='<%#Eval("Fname") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                         
                            <asp:TemplateField HeaderText="Email" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
           <asp:TemplateField HeaderText="UniqueSiteTraffic" >                           
                                <ItemTemplate>
                                 <asp:HiddenField runat="server" Value=' <%# Eval("Uid") %>' ID="Hfield" />
                                    <asp:Label ID="lblUniqueSiteTraffic" runat="server" Text='<%#Eval("UniqueSiteTraffic") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="siteCategory" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblsiteCategory" runat="server" Text='<%#Eval("siteCategory") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="PhNumber">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblPhNumber" runat="server" Text='<%#Eval("PhNumber") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PayMethod">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblPaymentMethod" runat="server" Text='<%#Eval("PaymentMethod") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblPayeeName" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Change Status" >
                           
                                <ItemTemplate>
                               
                                <asp:DropDownList ID="ddlStatus" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" >
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Waiting</asp:ListItem>
                                <asp:ListItem>ACTIVE</asp:ListItem>
                                <asp:ListItem>SUSPEND</asp:ListItem>
                                <asp:ListItem>DECLINE</asp:ListItem>
                               
                                </asp:DropDownList>
                                
                                 <%--<asp:LinkButton id="lnkSuspend" runat="server" Text="Suspend" CommandArgument='<%#Eval("Uid") %>' OnCommand="lnkSuspend" CommandName="suspend"  CausesValidation="false"></asp:LinkButton><br />
                                 <asp:LinkButton id="lnkDecline" runat="server" Text="Decline" CommandArgument='<%#Eval("Uid") %>' OnCommand="lnkDecline" CommandName="decline" CausesValidation="false"></asp:LinkButton>
--%>
                                </ItemTemplate>                                
                            </asp:TemplateField>
                           <%-- <asp:TemplateField HeaderText="Add Pwd" >                           
                                <ItemTemplate>
                                    <a href="adminpublisherEdit.aspx?Mode=Add&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
                               <img src="images/add.jpg" border="0"  alt="" />
                                </a>
                                </ItemTemplate>                                
                            </asp:TemplateField>--%>
                             <asp:TemplateField HeaderText="View"><ItemTemplate>
                                 <a href="adminpublisherEdit.aspx?Mode=View&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
                               <img src="images/search.png" border="0"  alt="" />
                                </a>
                                 </ItemTemplate></asp:TemplateField>      
                             <asp:TemplateField HeaderText="Edit"><ItemTemplate>
                                 <a href="adminpublisherEdit.aspx?Mode=Edit&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
                               <img src="images/edit.gif" border="0"  alt="" />
                                </a></ItemTemplate></asp:TemplateField>
                                 <asp:TemplateField HeaderText="Delete"><ItemTemplate>
                                <asp:ImageButton ID="btnDelete" runat="server"  ImageUrl="images/delete.gif" Enabled="false"  
                                CommandName="Delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?')"/></ItemTemplate></asp:TemplateField>
      
                             </Columns> 
                          <RowStyle BackColor="White" ForeColor="#000000" Height="25px" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <%--<SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />--%>
                          </asp:GridView></td></tr>
                          
      
                    </table>
</asp:Content>

