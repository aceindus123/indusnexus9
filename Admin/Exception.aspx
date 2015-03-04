<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="Exception.aspx.cs" Inherits="Admin_Exception" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/style.css" rel="stylesheetr" type="text/css" />
<script language="javascript" type="text/javascript">
 function confirm_delete(uid) {
                  if (confirm("Are you sure you want to delete this Classified?") == true)
                      document.location = 'Admin_DeleteData.aspx?cid=' + uid;
                  else
                      return false;
              }
              function alertdelete() {
                  alert("Selected Classified has been deleted Successfully");
              }
              function alertaccept() {
                  alert("Selected Classified has been Accepted");
              }
              </script></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center"  >
    <tr>
    <td align="center">
    <br />
        <asp:Label ID="Label1" CssClass="lbHeading" runat="server" Text="Exception Details"></asp:Label></td>
    </tr>
    <tr><td align="center">
          <asp:GridView ID="GridView1" runat="server" DataKeyNames="Sno" 
          AutoGenerateColumns="false" EmptyDataRowStyle-ForeColor="Red"
          ShowHeaderWhenEmpty="True" AllowPaging="True" PageSize="5"  CellPadding="4" 
           BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="990px" 
           OnPageIndexChanging="grid1_pageindexchanging" OnRowDeleting="gvEG_RowDeleting" >
       
<EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>

        <FooterStyle BackColor="#6B859D" ForeColor="#003399" />
        <HeaderStyle BackColor="#3C6387" Font-Bold="True" ForeColor="#FFFFFF" Height="30px" BorderColor="Black"  
        BorderStyle="Solid" BorderWidth="1px"  />
<PagerStyle ForeColor="#000000" HorizontalAlign="Left" BackColor="#FFFFFF" 
                                                    BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1" /> 
             <Columns>  <asp:TemplateField HeaderText="LineNo">
                           
                                <ItemTemplate>
                                <asp:HiddenField runat="server" Value=' <%# Eval("Sno") %>' ID="Hfield" />
                                    <asp:Label ID="lbllineno" runat="server" Text='<%#Eval("Excep_lineno") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Description">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("Excep_desc") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pagename">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblpagename" runat="server" Text='<%#Eval("Excep_page") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Postdate">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblpostdate" runat="server" Text='<%#Eval("Excep_Postdate") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Status">
                           
                                <ItemTemplate>
                                    <asp:Label ID="lblstatus" runat="server" Text='<%#Eval("Excep_status") %>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete"><ItemTemplate>                               
      <asp:ImageButton runat="server" ID="Delete" ImageUrl="images/delete.gif" Enabled="false"
                       CommandName="Delete" OnClientClick="return confirm('Are you sure Delete this Email?')" />
              </ItemTemplate></asp:TemplateField>
             </Columns>
           <RowStyle BackColor="White" ForeColor="#000000" Height="25px" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
          </asp:GridView>  
        
        </td>
     </tr> </table>
</asp:Content>

