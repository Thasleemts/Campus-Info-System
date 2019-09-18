<%@ Page Title="" Language="C#" MasterPageFile="~/Alumin/AluminMaster.Master" AutoEventWireup="true" CodeBehind="Alumincommunity.aspx.cs" Inherits="campusinfosystem.Alumin.Alumincommunity" %>
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
            <asp:Label ID="lblcmntynam" runat="server" Text="Community Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcmmntynam" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 120px">
            <asp:Label ID="lblctegry" runat="server" Text="Category Of Communication:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcategory" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 120px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 120px">
            &nbsp;</td>
        <td>
            <asp:Button ID="cmdsavecommunity" runat="server" 
                onclick="cmdsavecommunity_Click" Text="Save Community" />
        </td>
    </tr>
</table>
</asp:Content>
