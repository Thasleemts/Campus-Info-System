<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="communityform.aspx.cs" Inherits="campusinfosystem.student.communityform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:800px; margin-top:100px;">
    <table  style="height:200px; width:600px; margin-left:100px;">
        <tr>
            <td class="subhead" colspan="2">
                Create New Community</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblname" runat="server" Text="Community Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcategory" runat="server" Text="Category Of Community:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcategory" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" 
                    Text="Save Community" CssClass="btn" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
