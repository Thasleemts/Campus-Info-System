<%@ Page Title="" Language="C#" MasterPageFile="~/Alumin/AluminMaster.Master" AutoEventWireup="true" CodeBehind="Aluminfeedback.aspx.cs" Inherits="campusinfosystem.Alumin.Aluminfeedback" %>
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
                <asp:Label ID="lbldesc" runat="server" Text="Describe:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdsc" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdupld" runat="server" onclick="cmdupld_Click" Text="Upload" 
                    CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
