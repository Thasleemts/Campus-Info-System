<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="StudentAttendnce.aspx.cs" Inherits="campusinfosystem.admin.StudentAttendnce" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
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
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" 
        TypeName="campusinfosystem.controller.attendencecontroller">
    </asp:ObjectDataSource>
</asp:Content>
