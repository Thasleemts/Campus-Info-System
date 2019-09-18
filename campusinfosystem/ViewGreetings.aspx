<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="ViewGreetings.aspx.cs" Inherits="campusinfosystem.ViewGreetings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" 
        RepeatDirection="Horizontal" BackColor="White" BorderColor="#CCCCCC" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="180px" 
                ImageUrl='<%# Eval("Id", "~/student/Greetings/{0}.jpg") %>' Width="187px" />
            <br />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" 
        TypeName="campusinfosystem.controller.greetingscontroller">
    </asp:ObjectDataSource>
</asp:Content>
