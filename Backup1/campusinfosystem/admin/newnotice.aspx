<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="newnotice.aspx.cs" Inherits="campusinfosystem.admin.newnotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
   <table style="height:200px; width:600px;">
    <tr>
        <td class="subhead" colspan="2">
            News And Events</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblfrm" runat="server" Text="From:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtfrm" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblnotice" runat="server" Text="Description:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnotice" runat="server" CssClass="textbox"></asp:TextBox>
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
            <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click" 
                Text="Add Notice" CssClass="btn" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</div>
</asp:Content>
