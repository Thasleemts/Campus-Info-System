<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="StudentProfileEdit.aspx.cs" Inherits="campusinfosystem.student.StudentProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="Getdat" 
    TypeName="campusinfosystem.controller.studentregistrationcontroller">
    <SelectParameters>
        <asp:ControlParameter ControlID="HiddenField1" Name="username" 
            PropertyName="Value" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="ObjectDataSource1" Height="115px" Width="407px" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Studentid" HeaderText="Studentid" 
                SortExpression="Studentid" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                SortExpression="Lastname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                SortExpression="Mobile" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batchid" HeaderText="Batchid" 
                SortExpression="Batchid" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:DetailsView>
<asp:HiddenField ID="HiddenField1" runat="server" />

<div style="margin-left:200px;"> <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Edit" onclick="Button1_Click" /></div>
   
</asp:Content>
