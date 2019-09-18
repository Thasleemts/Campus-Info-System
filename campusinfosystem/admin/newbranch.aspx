<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="newbranch.aspx.cs" Inherits="campusinfosystem.admin.newbranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <table style="height:200px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
                Create New Branch</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbrchnam" runat="server" Text="Branch Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbrch" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsav" runat="server" onclick="cmdsav_Click" 
                    Text="Create Branch" CssClass="btn" />
            </td>
        </tr>
    </table>
   <table>
   <tr>
   <td></td>
   <td></td>
   </tr>
      <tr>
   <td class="subhead">View All Branches</td>
   <td></td>
   </tr>
      <tr>
   <td>
       &nbsp;</td>
   <td>&nbsp;</td>
   </tr>
      <tr>
   <td>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand" 
           BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
           CellPadding="3" Width="440px">
    <Columns>
        <asp:BoundField DataField="Branchid" HeaderText="Branchid" 
            SortExpression="Branchid" />
        <asp:BoundField DataField="Branch" HeaderText="Branch" 
            SortExpression="Branch" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    CommandArgument='<%# Eval("Branchid") %>' CommandName="EditBranch" 
                    Height="29px" ImageUrl="~/Design/images/edit.png" Width="32px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    CommandArgument='<%# Eval("Branchid") %>' CommandName="DeleteBranch" 
                    Height="29px" ImageUrl="~/Design/images/delete.png" Width="30px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
           <FooterStyle BackColor="White" ForeColor="#000066" />
           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <RowStyle ForeColor="#000066" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#007DBB" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.branchcontroller" 
           OldValuesParameterFormatString="original_{0}">
</asp:ObjectDataSource>&nbsp;</td>
   <td>&nbsp;</td>
   </tr>
   </table>
       <asp:Panel ID="Panel1" runat="server" Visible="False" Width="505px">
           <table style="width:600px;">
               <tr>
                   <td class="subhead" colspan="2">
                       Edit Branch</td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td>
                       Branch Name</td>
                   <td>
                       <asp:TextBox ID="txtBranchName" runat="server" CssClass="textbox"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td>
                       &nbsp;</td>
                   <td>
                       <asp:Button ID="btnupdate" runat="server" CssClass="btn" 
                           onclick="btnupdate_Click" Text="Update" />
                       <asp:HiddenField ID="HiddenField1" runat="server" />
                   </td>
               </tr>
           </table>
       </asp:Panel>
    </div>
</asp:Content>
