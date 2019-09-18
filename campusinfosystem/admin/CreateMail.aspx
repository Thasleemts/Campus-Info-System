<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="CreateMail.aspx.cs" Inherits="campusinfosystem.admin.CreateMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
         
            background-color: #c0c0c0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblsndr" runat="server" Text="Sender:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsendr" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblreciever" runat="server" Text="TO:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrcvr" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsubject" runat="server" Text="Subject:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsubj" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" Text="Message:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdsend" runat="server" CssClass="btn" onclick="cmdsend_Click" 
                    Text="Send" />
            </td>
        </tr>
    </table>
</asp:Content>
