<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NexusAdminMpage.master" AutoEventWireup="true" CodeFile="viewReports.aspx.cs" Inherits="viewReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
  <td align="center"><br />
   <asp:Label ID="lbluder" CssClass="lbHeading" runat="server" Text="User Details"></asp:Label>
  
  </td>

</tr>
  <tr>
   
   <td>
      <table width="70%" border="0" align="center" cellspacing="2" cellpadding="2">
        <tr>
          <td align="left">
           <asp:label ID="lblmessage" runat="server" ForeColor="Green" ></asp:label>
          
          </td>
          <td align="right">
         <asp:Button ID="backbutton" runat="server" Text="Back" ForeColor="white"  
                  BackColor="#C00000" onclick="backbutton_Click"/>
   
          </td>
        </tr>

      
      </table>
   
   </td>
   
  </tr>
  <tr>
    <td>
       <asp:panel ID="panel1" runat="server" >
          <table width="926px" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
             <td height="400px" align="center" valign="top">
                <table align="center" border="0" width="650px" cellspacing="3" cellpadding="3" >
                  <tr>
                     <td>
                       <fieldset width="650px">
                        <legend class="text14 darkgrey">Account Information</legend>
                         <table style="width:650px;height:424px;" border="0" cellpadding="3" cellspacing="3">
                           <tbody>
                               <tr>
                               <td style="width: 227px" align="left" height="25">
                                <asp:label ID="lblid" runat="server" Text="ID"></asp:label>
                               
                               </td>
                               <td style="height: 27px" align="left">

                               <asp:TextBox ID="txtid" runat="server" ReadOnly="true"></asp:TextBox>
                               
                               </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="lblwebsite" runat="server" Text="WebsiteName"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="txtwebsite" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblimpressions" runat="server" Text="Impressoins" ></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="txtimp" runat="server" ReadOnly="true" ></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblclicks" runat="server" Text="Clicks"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="txtclicks" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblcon" runat="server" Text="Conversions"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtconversions" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblctr" runat="server" Text="CTR"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtctr" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblnetrevenue" runat="server" Text="Network Revenue"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="TxtNetrevenue" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                                <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Label1" runat="server" Text="Publisher Revenue"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="txtpubrevenue" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblprofit" runat="server" Text="Profit"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="txtprofit" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblecpm" runat="server" Text="Ecpm"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtecpm" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblcountry" runat="server" Text="Country"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtcountry" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lblregdate" runat="server" Text="regDate"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtregdate" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                               <tr>
                                  <td style="width: 227px" align="left" height="25">
                                  <asp:Label ID="Lbluserrole" runat="server" Text="UserRole"></asp:Label>
                                  
                                  </td>
                                  <td style="height: 27px" align="left">
                                    <asp:TextBox ID="Txtuserrole" runat="server" ReadOnly="true"></asp:TextBox>
                                  
                                  </td>
                               
                               </tr>
                            
                           </tbody>


                         </table>
                       </fieldset>
                     
                     
                     </td>
                  
                  
                  </tr>
                
                </table> 
             
             </td>     
          
          </tr>
          
          </table>
       
       
           </table>
       
       
       </asp:panel>
     
    </td>
  
  </tr>


</table>
</asp:Content>

