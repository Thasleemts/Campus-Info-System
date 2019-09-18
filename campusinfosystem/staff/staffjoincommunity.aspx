<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="staffjoincommunity.aspx.cs" Inherits="campusinfosystem.staff.staffjoincommunity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="height:500px; width:800px; margin-top:100px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand" 
           BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
           CellPadding="3">
        <Columns>
            <asp:BoundField DataField="Communityid" HeaderText="Communityid" 
                SortExpression="Communityid" />
            <asp:BoundField DataField="Ownerid" HeaderText="Ownerid" 
                SortExpression="Ownerid" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnljoincomm" runat="server" 
                        CommandArgument='<%# Eval("Communityid") %>' CommandName="JoinCommunity">Join</asp:LinkButton>
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
        SelectMethod="GetAll" 
        TypeName="campusinfosystem.controller.communitycontroller">
    </asp:ObjectDataSource>
    </div>
</asp:Content>
