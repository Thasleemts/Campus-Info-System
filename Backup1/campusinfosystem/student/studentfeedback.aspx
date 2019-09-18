<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="studentfeedback.aspx.cs" Inherits="campusinfosystem.student.studentfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="height:500px; width:800px; margin-left:100px;">
   <table style="height:200px; width:600px;">
    <tr>
        <td class="subhead" colspan="2">
            Feedback Form</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblfeedbck" runat="server" Text="Feedback:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtdesc" runat="server" Height="119px" Width="466px"></asp:TextBox>
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
            <asp:Button ID="cmdsend" runat="server" onclick="cmdsend_Click" Text="Send" 
                CssClass="btn" />
        </td>
    </tr>
</table>
</div>
</asp:Content>
