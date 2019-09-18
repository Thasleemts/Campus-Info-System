<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="Note.aspx.cs" Inherits="campusinfosystem.staff.Note" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblTopic" runat="server" Text="Topic:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttopic" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblintro" runat="server" Text="Introduction:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtintrodction" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsubj" runat="server" Text="Subject:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsubj" runat="server" CssClass="textbox"></asp:TextBox>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Cmdupload" runat="server" Text="Upload" 
                    onclick="Cmdupload_Click" CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
