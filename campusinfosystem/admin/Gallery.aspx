<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="campusinfosystem.admin.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <table style="height:150px; width:600px;">
        <tr>
            <td class="subhead" colspan="2">
              Create New  Gallery</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblnam" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnam" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltyp" runat="server" Text="Type:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttyp" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Upload Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" />
            </td>
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
