﻿<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="staffChangePsd.aspx.cs" Inherits="campusinfosystem.staff.staffChangePsd" %>
<%@ Register src="../common/changepassword.ascx" tagname="changepassword" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:changepassword ID="changepassword1" runat="server" />
</asp:Content>
