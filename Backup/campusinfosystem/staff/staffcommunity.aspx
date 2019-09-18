<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="staffcommunity.aspx.cs" Inherits="campusinfosystem.staff.staffcommunity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:800px; margin-top:20px; margin-left:100px;">
    <table style="height:200px; width:800px;">
        <tr>
            <td class="subhead" colspan="2">
                Create New Community</td>
        </tr>
        <tr>
        <td>
        </td>
        <td></td>
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
                <asp:Label ID="lblcatgory" runat="server" Text="Category:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcateg" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdsav" runat="server" Text="Save" 
                    onclick="cmdsav_Click" CssClass="btn" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
