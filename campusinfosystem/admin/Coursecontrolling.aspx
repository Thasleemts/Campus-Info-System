<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Coursecontrolling.aspx.cs" Inherits="campusinfosystem.admin.Coursecontrolling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3">
    <Columns>
        <asp:BoundField DataField="Courseid" HeaderText="Courseid" 
            SortExpression="Courseid" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Duration" HeaderText="Duration" 
            SortExpression="Duration" />
        <asp:BoundField DataField="Fees" HeaderText="Fees" SortExpression="Fees" />
        <asp:BoundField DataField="Eligibility" HeaderText="Eligibility" 
            SortExpression="Eligibility" />
        <asp:BoundField DataField="Totalseat" HeaderText="Totalseat" 
            SortExpression="Totalseat" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkedit" runat="server" CommandName="EditCourse">Edit</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkdel" runat="server" 
                    CommandArgument='<%# Eval("Courseid") %>' CommandName="DeleteCourse">Delete</asp:LinkButton>
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
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.coursecontroller">
</asp:ObjectDataSource>
</asp:Content>
