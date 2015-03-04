<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="AdminFeedback.aspx.cs" Inherits="New_Admin_AdminFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Indusnexus Affiliate Network | Affiliate Marketing | Leading adnetwork</title>
<meta name="description" content="Easily monitor your online ads. Find the right advertisers and publishers at Indus Nexus and boost your ad performance by targeting the right users" />
<meta name="keywords" content=" CPM CPC Affiliate Networks, Affiliate Program, Affiliate Networks Online Marketing, Internet Advertising, Publisher network,indusnexus, Advertiser network, Pay Per Click, PPC, CPM,CPA" />
<meta name="robots" content="index, follow">
<meta name="rating" content="General" />
<meta name="distribution" content="global" />
<meta name="author" content="http://www.indusnexus.com" />
<meta name="google-site-verification" content="OvElu1rCtXHDGTLRDAmHtfT5Y99D_e15qA-voy4O1SA" />
<meta name="msvalidate.01" content="4211B0B553957C37014674E51B0ABB3E" />
<meta name="alexaVerifyID" content="3LXxqJgk1GZ3vzr1SfR-pjmgKtk"/> 
<link rel="canonical" href="http://www.indusnexus.com/" />

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
              </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center"  >
    <tr>
    <td align="center">
    <br />
        <asp:Label ID="Label1" CssClass="lbHeading" runat="server" Text="Feedback Details"></asp:Label></td>
    </tr>
    <tr><td align="center">
      <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" DataKeyNames="Cid"  
         EmptyDataRowStyle-ForeColor="red"  ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="5"
         BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="990px" 
         OnPageIndexChanging="grid1_pageindexchanging" OnRowDeleting="gvEG_RowDeleting" >
             
<EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>

        <FooterStyle BackColor="#6B859D" ForeColor="#003399" />
        <HeaderStyle BackColor="#3C6387" Font-Bold="True" ForeColor="#FFFFFF" Height="30px" BorderColor="Black"  
        BorderStyle="Solid" BorderWidth="1px"  />
<PagerStyle ForeColor="#000000" HorizontalAlign="Center" BackColor="#FFFFFF" 
                                                    BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1" /> 
      <Columns>
           <asp:TemplateField HeaderText="Name">
                           
                                <ItemTemplate>
                                  <asp:HiddenField runat="server" Value=' <%# Eval("Cid") %>' ID="Hfield" />
                                  <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label>

                                </ItemTemplate>
                                
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmailId">
                             <ItemTemplate>
                              <asp:Label ID="lblEmailid" runat="server" Text='<%#Eval("EmailId") %>'></asp:Label>
                             
                             </ItemTemplate>
                            
                            
                            </asp:TemplateField>

                             <asp:TemplateField HeaderText="Comments">

                             <ItemTemplate>
                              <asp:Label ID="lblcomments" runat="server" Text='<%#Eval("Comments") %>'></asp:Label>
                             
                             </ItemTemplate>
                            
                            
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Posteddate">

                             <ItemTemplate>
                              <asp:Label ID="lblpostdate" runat="server" Text='<%#Eval("PostedDate") %>'></asp:Label>
                             
                             </ItemTemplate>
                            
                            
                            </asp:TemplateField>
       <asp:TemplateField HeaderText="Delete"><ItemTemplate>                               
      <asp:ImageButton runat="server" ID="Delete" ImageUrl="images/delete.gif" Enabled="false"
                 CommandName="Delete" OnClientClick="return confirm('Are you sure Delete this Email?')" />
              </ItemTemplate></asp:TemplateField>
      
      </Columns>
      
        <RowStyle BackColor="White" ForeColor="#000000" Height="25px" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <%--<SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />--%>
      </asp:GridView>
    
    </td>
     </tr> </table>
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

