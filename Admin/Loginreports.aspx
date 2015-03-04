<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="Loginreports.aspx.cs" Inherits="Admin_Loginreports" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
  <table align="center"  width="100%"  >
    <tr>
    <td align="center">
    <br />
        <asp:Label ID="Label1" CssClass="lbHeading" runat="server" Text="Reports"></asp:Label></td>
    </tr>
    <tr>
    <td align="left">
    <asp:TextBox ID="txtSearch" runat="server" Width="230px" Height="25px" ></asp:TextBox>
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
    <asp:LinkButton ID="PublisherReports" runat="server" Text="Publisher Reports" CssClass="stslinks" 
            onclick="Publisher_Click" ></asp:LinkButton>
    </td>
    <td>
    <asp:LinkButton ID="CPMReports" runat="server" Text="CPM Reports" CssClass="stslinks" 
            onclick="CPM_Click" ></asp:LinkButton>
    </td>
    <td> 
    <asp:LinkButton ID="CPCReports" runat="server" Text="CPC Reports" CssClass="stslinks" 
            onclick="CPC_Click" ></asp:LinkButton>
    </td>
    <td>
    <asp:LinkButton ID="CPAReports" runat="server" Text="CPA Reports" CssClass="stslinks" 
            onclick="CPA_Click" ></asp:LinkButton>
    </td>
    <td>
       
    </td>
    </tr><table><tr><td>Date From</td><td> <cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtfrom"
    Format="MM/dd/yyyy">
</cc1:CalendarExtender>
            <asp:TextBox ID="txtfrom" runat="server" Width="100px" ></asp:TextBox></td><td>DateTo</td><td><cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtto"
    Format="dd/MM/yyyy">
</cc1:CalendarExtender>
                <asp:TextBox ID="txtto" runat="server" Width="100px"></asp:TextBox></td><td>
                    <asp:Button ID="Button1" runat="server" Text="GO" onclick="Button1_Click" /></td><td width="50px"></td><td>Country</td><td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>U.S.A</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>U.K</asp:ListItem>
            </asp:DropDownList>
        </td></tr></table></table>
     
    </tr>
    <tr><td align="center"><br />
    <asp:Label ID="lbnorecords" runat="server" Text="No Records Found" CssClass="lbHeading" Visible="false" ></asp:Label>
      <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="false"
      EmptyDataRowStyle-ForeColor="Red" AllowPaging="true" PageSize="10"  
     CellPadding="4" 
            BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="980px">
             
<EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>

        <FooterStyle BackColor="#6B859D" ForeColor="#003399" />
        <HeaderStyle BackColor="#3C6387" Font-Bold="True" ForeColor="#FFFFFF" Height="30px" BorderColor="Black"  
        BorderStyle="Solid" BorderWidth="1px"  />
<PagerStyle ForeColor="#000000" HorizontalAlign="Left" BackColor="#FFFFFF" 
                                                    BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1" />   
      <Columns>     
    <asp:TemplateField HeaderText="Id" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="User Id" >
                           
                                <ItemTemplate>
                                    <asp:Label ID="lbluid" runat="server" Text='<%#Eval("Uid") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
  <asp:TemplateField HeaderText="WebsiteName">
    <ItemTemplate>
      <asp:HiddenField runat="server" Value=' <%# Eval("Id") %>' id="Hfield" />
       <asp:Label ID="lblFname" runat="server" Text='<%#Eval("WebsiteName") %>'></asp:Label>
    </ItemTemplate>
  
  </asp:TemplateField>
 
  <asp:TemplateField HeaderText="Impressions">
    <ItemTemplate>
       <asp:Label ID="lblcompany" runat="server" Text='<%#Eval("Impressions") %>'></asp:Label>
    </ItemTemplate>
  
  </asp:TemplateField>
  <asp:TemplateField HeaderText="Clicks">
    <ItemTemplate>
       <asp:Label ID="lblUrl" runat="server" Text='<%#Eval("Clicks") %>'></asp:Label>
    </ItemTemplate>
  
  </asp:TemplateField>
  <asp:TemplateField HeaderText="Converssions">
    <ItemTemplate>
       <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Converssions") %>'></asp:Label>
    </ItemTemplate>  
  </asp:TemplateField >
  
  <asp:TemplateField HeaderText="CTR">
 
  <ItemTemplate><asp:Label ID="lblimpressions" runat="server" Text='<%#Eval("CTR") %>'></asp:Label></ItemTemplate> 
  
  </asp:TemplateField > 
  <asp:TemplateField HeaderText="N/WRevenue">
 
  <ItemTemplate><asp:Label ID="lblrevenue" runat="server" Text='<%#Eval("NetworkRevenue") %>'></asp:Label></ItemTemplate> 
  
  </asp:TemplateField > 
 <asp:TemplateField  HeaderText="Profit">
  <ItemTemplate><asp:Label ID="lblPaymentDate" runat="server" Text='<%#Eval("NetworkProfit") %>'></asp:Label></ItemTemplate>
  
  </asp:TemplateField > 
  <asp:TemplateField  HeaderText="Ecpm">
  <ItemTemplate><asp:Label ID="lblEcpm" runat="server" Text='<%#Eval("Ecpm") %>'></asp:Label>
  </ItemTemplate>
  </asp:TemplateField> 
   <asp:TemplateField  HeaderText="regDate">
  <ItemTemplate><asp:Label ID="lblregDate" runat="server" Text='<%#Eval("regDate") %>'></asp:Label>
  </ItemTemplate>
  </asp:TemplateField>
   <asp:TemplateField  HeaderText="Country">
  <ItemTemplate><asp:Label ID="lblCountry" runat="server" Text='<%#Eval("Country") %>'></asp:Label>
  </ItemTemplate>
  </asp:TemplateField>
 
  <asp:TemplateField  HeaderText="Role" >
  <ItemTemplate><asp:Label ID="lblrole" runat="server" Text='<%#Eval("UserRole") %>'></asp:Label>
  </ItemTemplate>
  </asp:TemplateField>
   <asp:TemplateField HeaderText="View"><ItemTemplate>
                                 <a href="viewReports.aspx?Mode=View&Editid=<%# DataBinder.Eval(Container.DataItem, "id") %>">
                               <img src="images/search.png" border="0"  alt="" />
                                </a>
                                 </ItemTemplate></asp:TemplateField>
   
   <%--<asp:TemplateField HeaderText="Delete">
    <ItemTemplate>
       <asp:ImageButton ID="img2" runat="server" ImageUrl="images/delete.gif" CommandName="Delete" OnClientClick="return confirm('Are you sure Delete this Record?')" />
    </ItemTemplate>
  
  </asp:TemplateField>--%>
      </Columns>
     
      <RowStyle BackColor="White" ForeColor="#000000" Height="25px" HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <%--<SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />--%>
   
     </asp:GridView>
    </td>    
    </tr>
   
</table>






</asp:Content>

