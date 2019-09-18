<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="AddGreetings.aspx.cs" Inherits="campusinfosystem.student.AddGreetings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:300px; width:600px;">
        <tr>
            <td class="subhead">
                Greetings</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="txtgreetings" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblrcvr" runat="server" Text="TO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtto" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Upload Greetings</td>
            <td class="style2">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpload" runat="server" CssClass="btn" 
                    onclick="btnUpload_Click" Text="Upload" />
            </td>
        </tr>
    </table>
</asp:Content>
