<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="newpage.aspx.cs" Inherits="campusinfosystem.student.newpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="Noticeid" HeaderText="Noticeid" 
                SortExpression="Noticeid" />
            <asp:BoundField DataField="From" HeaderText="From" SortExpression="From" />
            <asp:BoundField DataField="Notice" HeaderText="Notice" 
                SortExpression="Notice" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" TypeName="campusinfosystem.controller.noticecontroller">
    </asp:ObjectDataSource>
    <p>
    </p>
</asp:Content>
