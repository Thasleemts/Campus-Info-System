<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="campusinfosystem.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:150px; width:400px;">
        <tr>
        <td></td>
        <td class="lgnhead"><h2>Login Here</h2></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtunm" runat="server" CssClass="logintxt" style="background-image: url('Design/images/user.png'); background-repeat: no-repeat; padding-left:30px;" placeholder="User Name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtpsw" runat="server" CssClass="logintxt" 
                    style="background-image: url('Design/images/pass.png'); background-repeat: no-repeat; padding-left:30px;" 
                    placeholder="Password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblinvalidpsw" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdlgin" runat="server" onclick="cmdlgin_Click" Text="Login"  CssClass="lgnbtn"  />
            </td>
        </tr>
    </table>
</asp:Content>
