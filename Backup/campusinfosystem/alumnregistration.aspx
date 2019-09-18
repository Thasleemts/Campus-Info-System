<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="alumnregistration.aspx.cs" Inherits="campusinfosystem.alumnregistration" %>
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
                <asp:Label ID="lblnam" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYearOf" runat="server" Text="Year Of Passout:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtyrofpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcorse" runat="server" Text="Course:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Courseid" 
                    ondatabound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.coursecontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbatch" runat="server" Text="Batch"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="Batch" DataValueField="Batchid" 
                    ondatabound="DropDownList2_DataBound">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddrs" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblplc" runat="server" Text="Place:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtplc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcity" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblstat" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcountry" runat="server" Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpin" runat="server" Text="Pin:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblphone" runat="server" Text="Phone:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmob" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblgndr" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdbgndr" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDob" runat="server" Text="DOB:"></asp:Label>
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblusername" runat="server" Text="Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtunam" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpsw" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpsw" runat="server"></asp:TextBox>
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
                <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click" 
                    Text="Submit:" />
            </td>
        </tr>
    </table>
</asp:Content>
