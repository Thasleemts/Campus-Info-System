<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="campusinfosystem.admin.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:300px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
                Add News And Events</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblvenue" runat="server" Text="Venue"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtvenu" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" CssClass="textbox"></asp:TextBox>
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
