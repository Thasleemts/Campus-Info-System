<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="Attendence.aspx.cs" Inherits="campusinfosystem.staff.Attendence" %>
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
                <asp:Label ID="lblstdent" runat="server" Text="Student:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlstudntname" runat="server" 
                    DataSourceID="ObjectDataSource3" DataTextField="Firstname" 
                    DataValueField="Studentid">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                    SelectMethod="GetAll" 
                    TypeName="campusinfosystem.controller.studentregistrationcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBatchid" runat="server" Text="Batch ID:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlbatcid" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Batch" DataValueField="Batchid">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbrchid" runat="server" Text="Branch ID:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlbrnchid" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="Branch" 
                    DataValueField="Branchid">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.branchcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbltotday" runat="server" Text="Total Days:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttotldys" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblatndnc" runat="server" Text="Attendence:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtattnde" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpercntage" runat="server" Text="Percentage:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpercntge" runat="server"></asp:TextBox>
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
                <asp:Button ID="cmdUpld" runat="server" onclick="cmdUpld_Click" Text="Upload" />
            </td>
        </tr>
    </table>
</asp:Content>
