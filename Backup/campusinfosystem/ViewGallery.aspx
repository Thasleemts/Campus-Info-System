<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="ViewGallery.aspx.cs" Inherits="campusinfosystem.ViewGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
        RepeatColumns="4" RepeatDirection="Horizontal" Width="610px">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="121px" 
                ImageUrl='<%# Eval("Galleryid", "~/admin/Gallery/{0}.jpg") %>' Width="122px" />
            <br />
            <br />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Type:
            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" TypeName="campusinfosystem.controller.gallerycontroller">
    </asp:ObjectDataSource>
</asp:Content>
