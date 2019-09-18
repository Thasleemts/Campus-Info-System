<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="studentblog.aspx.cs" Inherits="campusinfosystem.student.studentblog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="height:500px; width:800px; margin-top:20px; margin-left:100px;">
   <table style="height:200px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
                Create Blog</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblblgname" runat="server" Text="Blog Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtblgname" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdupload" runat="server" onclick="cmdupload_Click" 
                    Text="Upload" CssClass="btn" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
