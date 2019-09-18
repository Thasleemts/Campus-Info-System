<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="StudentChangePsd.aspx.cs" Inherits="campusinfosystem.student.StudentChangePsd" %>
<%@ Register src="../common/changepassword.ascx" tagname="changepassword" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:changepassword ID="changepassword1" runat="server" />
</asp:Content>
