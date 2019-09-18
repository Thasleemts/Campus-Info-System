<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="StudentAttendnce.aspx.cs" Inherits="campusinfosystem.admin.StudentAttendnce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="ObjectDataSource1" Height="50px" Width="125px" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Studentid" HeaderText="Studentid" 
                SortExpression="Studentid" />
            <asp:BoundField DataField="Batchid" HeaderText="Batchid" 
                SortExpression="Batchid" />
            <asp:BoundField DataField="Branchid" HeaderText="Branchid" 
                SortExpression="Branchid" />
            <asp:BoundField DataField="Totaldays" HeaderText="Totaldays" 
                SortExpression="Totaldays" />
            <asp:BoundField DataField="Attendence" HeaderText="Attendence" 
                SortExpression="Attendence" />
            <asp:BoundField DataField="Percentage" HeaderText="Percentage" 
                SortExpression="Percentage" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" 
        TypeName="campusinfosystem.controller.attendencecontroller">
    </asp:ObjectDataSource>
</asp:Content>
