<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="campusinfosystem.admin.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:300px; width:600px;">
        <tr>
            <td  class="subhead" colspan="2">
                Add Notification</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbranch" runat="server" Text="Branch:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpbranch" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="Branch" 
                    DataValueField="Branchid" ondatabound="drpbranch_DataBound" 
                    CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblbatch" runat="server" Text="Batch:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drpbatch" runat="server" DataSourceID="ObjectDataSource1" 
                    DataTextField="Batch" DataValueField="Batchid" 
                    ondatabound="drpbatch_DataBound" CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldesc" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblsubj" runat="server" Text="Subject:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsubj" runat="server" CssClass="textbox"></asp:TextBox>
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
                <asp:Button ID="cmdupld" runat="server" onclick="cmdupld_Click" Text="Upload" 
                    CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.branchcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
