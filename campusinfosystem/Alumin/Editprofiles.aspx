<%@ Page Title="" Language="C#" MasterPageFile="~/Alumin/AluminMaster.Master" AutoEventWireup="true" CodeBehind="Editprofiles.aspx.cs" Inherits="campusinfosystem.Alumin.Editprofiles" %>
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
                <asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnam" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblyrofpsot" runat="server" Text="Year Of Passout:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtyrofpassot" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcorse" runat="server" Text="Course:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcorse" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbatch" runat="server" Text="Batch:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbatch" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddres" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblplac" runat="server" Text="Place:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtplac" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblstat" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstat" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcountry" runat="server" Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontry" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpin" runat="server" Text="Pin:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblphone" runat="server" Text="Phone:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmob" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblgendr" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdbgndr" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldob" runat="server" Text="DOB:"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="txtdob" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Button" 
                    CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
