<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="ViewNotification.aspx.cs" Inherits="campusinfosystem.ViewNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" 
        TypeName="campusinfosystem.controller.notificationcontroller">
    </asp:ObjectDataSource>
</asp:Content>
