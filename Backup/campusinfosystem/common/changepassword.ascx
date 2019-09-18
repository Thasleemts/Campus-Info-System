<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="changepassword.ascx.cs" Inherits="campusinfosystem.common.changepassword" %>

<link href="../Design/css/Styles.css" rel="stylesheet" type="text/css" />
<div style="height:500px; width:800px; margin-top:20px; ">
<table style="height:400px; width:600px;">
    <tr>
        <td class="subhead" colspan="2">
            Change Password</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblusrnam" runat="server" Text="Username:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtusrnam" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtusrnam" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblcurntpsw" runat="server" Text="CurrentPassword:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcurntpsw" runat="server" CssClass="textbox"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblpsw" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtcurntpsw" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="nwpsw" runat="server" Text="New Password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnwpsw" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtnwpsw" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="confpsw" runat="server" Text="Confirm Password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtconfirmpsw" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtconfirmpsw" Display="Dynamic" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnwpsw" ControlToValidate="txtconfirmpsw" Display="Dynamic" 
                ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
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
            <asp:Button ID="cmdupdate" runat="server" onclick="cmdupdate_Click" 
                Text="Update" CssClass="btn" />
        </td>
    </tr>

</table>
</div>
