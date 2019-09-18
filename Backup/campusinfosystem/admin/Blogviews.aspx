<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Blogviews.aspx.cs" Inherits="campusinfosystem.admin.Blogviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="Blogid" HeaderText="Blogid" 
                SortExpression="Blogid" />
            <asp:BoundField DataField="Blogname" HeaderText="Blogname" 
                SortExpression="Blogname" />
            <asp:BoundField DataField="Createdby" HeaderText="Createdby" 
                SortExpression="Createdby" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" TypeName="campusinfosystem.controller.blogcontroller">
    </asp:ObjectDataSource>
</asp:Content>
