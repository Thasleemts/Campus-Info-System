<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="staffblog.aspx.cs" Inherits="campusinfosystem.staff.staffblog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="height:500px; width:800px; margin-left:100px;">
    <table style="height:300px; width:800px;">
        <tr>
            <td class="subhead" colspan="2">
                Create Blog</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblblgnam" runat="server" Text="Blog Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtblogname" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" 
                    CssClass="btn" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
