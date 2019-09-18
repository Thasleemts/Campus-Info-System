<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="campusinfosystem.staff.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="lblfnam" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfnam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lbllnam" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlnam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblmob" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblgndr" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdbgndr" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lbladdrs" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblplc" runat="server" Text="Place:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblcountry" runat="server" Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblpin" runat="server" Text="Pin:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblexp" runat="server" Text="Experience:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lblDob" runat="server" Text="DOB"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                <asp:Label ID="lbldpt" runat="server" Text="Department:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdpt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 120px">
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Save" />
            </td>
        </tr>
    </table>
</asp:Content>
