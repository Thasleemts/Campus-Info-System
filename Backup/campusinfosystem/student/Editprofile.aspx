<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="Editprofile.aspx.cs" Inherits="campusinfosystem.student.Editprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:800px; margin-left:100px;">
    <table style="height:500px; width:800px;">
        <tr>
            <td class="subhead" colspan="2">
                Edit Profile</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblfnam" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfnam" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbllnam" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlnam" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemil" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Label ID="lbldob" runat="server" Text="DOB"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblgndr" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblplc" runat="server" Text="Place:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtplc" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
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
                <asp:Label ID="lblcountr" runat="server" Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Label ID="lblcourse" runat="server" Text="Course:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcourse" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Name" 
                    DataValueField="Courseid" CssClass="textbox" 
                    ondatabound="ddlcourse_DataBound">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbatch" runat="server" Text="Batch:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlbatch" runat="server" DataSourceID="ObjectDataSource2" 
                    DataTextField="Batch" DataValueField="Batchid" CssClass="textbox" 
                    ondatabound="ddlbatch_DataBound">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
                </asp:ObjectDataSource>
            </td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.coursecontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsave" runat="server" onclick="cmdsave_Click" Text="Save" 
                    CssClass="btn" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
