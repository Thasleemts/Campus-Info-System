<%@ Page Title="" Language="C#" MasterPageFile="~/Alumin/AluminMaster.Master" AutoEventWireup="true" CodeBehind="AluminBlog.aspx.cs" Inherits="campusinfosystem.Alumin.AluminBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblBlgnam" runat="server" Text="Blog Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtblgnam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdes" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdupld" runat="server" onclick="cmdupld_Click" Text="Upload" />
            </td>
        </tr>
    </table>
</asp:Content>
