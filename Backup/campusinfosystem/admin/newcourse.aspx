<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="newcourse.aspx.cs" Inherits="campusinfosystem.admin.newcourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
    <table style="height:500px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
                Add New Course</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcour" runat="server" Text="Course Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcour" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldur" runat="server" Text="Duration"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdur" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblfees" runat="server" Text="Fee:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfee" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblelig" runat="server" Text="Eligibility"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtelig" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltots" runat="server" Text="Total Seats"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttots" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsav" runat="server" onclick="Button1_Click" Text="Save" 
                    CssClass="btn" />
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
