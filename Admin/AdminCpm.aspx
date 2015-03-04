<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="AdminCpm.aspx.cs" Inherits="Admin_AdminCpm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<table align="center"  >   
<tr><td align="center"><br /> 
<asp:Label ID="Label4" CssClass="lbHeading" runat="server" Text="CPM Users Details"></asp:Label></td></tr>
<tr>
<td align="left">
<asp:TextBox ID="txtSearch" runat="server" Width="230px" Height="30px" ></asp:TextBox>
<cc1:TextBoxWatermarkExtender ID="txtwtrsearch" runat="server" TargetControlID="txtSearch" 
WatermarkCssClass="SearchStyle" WatermarkText="Seach By Name or Email or Id No" >
</cc1:TextBoxWatermarkExtender>
<asp:Button ID="btnsearch" runat="server" Text="Search" 
onclick="btnsearch_Click" /></td></tr>
<tr><td align="right"><br /><table align="left" width="400px"><tr><td>
<asp:LinkButton ID="lnkwaiting" runat="server" Text="Waiting" CssClass="stslinks" 
onclick="lnkwaiting_Click" ></asp:LinkButton></td>
<td><asp:LinkButton ID="lnkActive1" runat="server" Text="Active" CssClass="stslinks" 
onclick="lnkActive1_Click" ></asp:LinkButton></td>
<td><asp:LinkButton ID="lnksuspend" runat="server" Text="Suspend" CssClass="stslinks" 
onclick="lnksuspend_Click" ></asp:LinkButton></td>
<td><asp:LinkButton ID="lnkDecline1" runat="server" Text="Decline" CssClass="stslinks" 
onclick="lnkDecline1_Click" ></asp:LinkButton>
</td><td></td></tr></table>
<asp:Button ID="btnaddnew" runat="server" Text="Add New" 
onclick="btnaddnew_Click" /></td></tr>
<tr><td align="center"><br /><asp:Label ID="lbnorecords" runat="server" Text="No Records Found" CssClass="lbHeading" Visible="false" ></asp:Label>
<asp:GridView ID="GridView1" runat="server" EmptyDataRowStyle-ForeColor="Red" AutoGenerateColumns="False" 
ShowHeaderWhenEmpty="True" AllowPaging="True" DataKeyNames="Uid"
PageSize="10"  OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" 
BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="990px" OnRowDeleting="gvd_RowDeleting" >         
<EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>
<FooterStyle BackColor="#6B859D" ForeColor="#003399" />
<HeaderStyle BackColor="#3C6387" Font-Bold="True" ForeColor="#FFFFFF" Height="30px" BorderColor="Black"  
BorderStyle="Solid" BorderWidth="1px"  />
<PagerStyle ForeColor="#000000" HorizontalAlign="Left" BackColor="#FFFFFF" 
            BorderColor="Black" 
BorderStyle="Solid" BorderWidth="1" /><Columns>
<asp:TemplateField HeaderText="Id" ><ItemTemplate>
<asp:Label ID="lblid" runat="server" Text='<%#Eval("Uid") %>'></asp:Label>
</ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Fname"><ItemTemplate>
<asp:HiddenField runat="server" Value=' <%# Eval("Uid") %>' ID="Hfield" />
<asp:Label ID="lblFname" runat="server" Text='<%#Eval("Fname") %>'></asp:Label>
</ItemTemplate></asp:TemplateField> 
<asp:TemplateField HeaderText="Company"><ItemTemplate>
<asp:Label ID="lblcompany" runat="server" Text='<%#Eval("Company") %>'></asp:Label>
</ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Url"><ItemTemplate>
<asp:Label ID="lblurl" runat="server" Text='<%#Eval("Url") %>'></asp:Label>
</ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Email"><ItemTemplate>
<asp:Label ID="lblemail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
</ItemTemplate></asp:TemplateField> 
<asp:TemplateField HeaderText="AdMode"><ItemTemplate>
<asp:Label ID="lbladmode" runat="server" Text='<%#Eval("AdvertiseMode") %>'></asp:Label>
</ItemTemplate></asp:TemplateField>
<%--<asp:TemplateField HeaderText="RegDate">
<ItemTemplate>
<asp:Label ID="lbldate" runat="server" Text='<%#Eval("RegDate") %>'></asp:Label>
</ItemTemplate>
  
</asp:TemplateField>--%>
<asp:TemplateField HeaderText="Status"><ItemTemplate>
<asp:Label ID="lblstatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
</ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Change Status"><ItemTemplate>
<%--<asp:LinkButton id="lnkSuspend" runat="server" Text="Suspend" CommandArgument='<%#Eval("Uid") %>' OnCommand="lnkSuspend" CommandName="suspend"  CausesValidation="false"></asp:LinkButton><br />
<asp:LinkButton id="lnkDecline" runat="server" Text="Decline" CommandArgument='<%#Eval("Uid") %>' OnCommand="lnkDecline" CommandName="decline" CausesValidation="false"></asp:LinkButton>--%>
<asp:DropDownList ID="ddlStatus" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" >
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>Waiting</asp:ListItem>
<asp:ListItem>ACTIVE</asp:ListItem>
<asp:ListItem>SUSPEND</asp:ListItem>
<asp:ListItem>DECLINE</asp:ListItem>                               
</asp:DropDownList></ItemTemplate></asp:TemplateField>
<%--<asp:TemplateField HeaderText="Add Pwd" >
                           
<ItemTemplate>
<a href="AdminCpmEdit.aspx?Mode=add&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
<img src="images/add.jpg" border="0"  alt="" />
</a>
</ItemTemplate>
                                
</asp:TemplateField>--%>

<asp:TemplateField HeaderText="View"><ItemTemplate>
<a href="AdminCpmEdit.aspx?Mode=View&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
<img src="images/search.png" border="0"  alt="" /></a></ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Edit"><ItemTemplate>
<a href="AdminCpmEdit.aspx?Mode='Edit'&Editid=<%# DataBinder.Eval(Container.DataItem, "Uid") %>">
<img src="images/edit.gif" border="0"  alt="" />
</a></ItemTemplate></asp:TemplateField>
<asp:TemplateField HeaderText="Delete"><ItemTemplate>
<asp:ImageButton ID="img2" runat="server" Enabled="false" ImageUrl="images/delete.gif" CommandName="Delete"  OnClientClick="return confirm('Are you sure Delete this Record?')"/>
</ItemTemplate></asp:TemplateField></Columns>
<RowStyle BackColor="White" ForeColor="#000000" Height="25px" HorizontalAlign="Center"/>
<SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
<SortedAscendingCellStyle BackColor="#EDF6F6" />
<SortedAscendingHeaderStyle BackColor="#0D4AC4" />
<SortedDescendingCellStyle BackColor="#D6DFDF" />
<SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView></td></tr></table>
</asp:Content>

