<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="newbatch.aspx.cs" Inherits="campusinfosystem.admin.newbatch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <table style="height:200px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
                Create New Batch</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbatch" runat="server" Text="Batch:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbatch" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click" 
                    Text="Create Batch" CssClass="btn" />
            </td>
        </tr>
    </table>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="subhead" colspan="2">
                    View All Batches</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand" 
        DataKeyNames="Batchid,Batch" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
                        BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" 
                        Width="488px">
    <Columns>
        <asp:BoundField DataField="Batchid" HeaderText="Batchid" 
            SortExpression="Batchid" />
        <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CommandArgument='<%# Eval("Batchid") %>' CommandName="UpdateBatch">Update</asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="lkbupdate" runat="server" 
                    CommandArgument='<%# Eval("Batchid") %>' CommandName="EditBatch">Edit</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lkbdelete" runat="server" CommandName="DeleteBatch" 
                    CommandArgument='<%# Eval("Batchid") %>'>DELETE</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
</asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table style="width:600px;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="subhead" colspan="2">
                        Update Batch
                    </td>
                </tr>
                <tr>
                    <td>
                        Batch Name</td>
                    <td>
                        <asp:TextBox ID="txtUpdateBatch" runat="server" CssClass="textbox" 
                        Height="22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="tnUpdate" runat="server" Text="Update" CssClass="btn" 
                            onclick="tnUpdate_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />

    </div>
</asp:Content>
