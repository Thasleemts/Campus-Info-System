﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="communityview.aspx.cs" Inherits="campusinfosystem.admin.communityview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1">
    <Columns>
        <asp:BoundField DataField="Communityid" HeaderText="Communityid" 
            SortExpression="Communityid" />
        <asp:BoundField DataField="Ownerid" HeaderText="Ownerid" 
            SortExpression="Ownerid" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Category" HeaderText="Category" 
            SortExpression="Category" />
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" 
    TypeName="campusinfosystem.controller.communitycontroller">
</asp:ObjectDataSource>
</asp:Content>
