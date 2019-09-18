<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="NoteAuthentication.aspx.cs" Inherits="campusinfosystem.admin.NoteAuthentication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
        onitemcommand="FormView1_ItemCommand" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        GridLines="Horizontal">
        <EditItemTemplate>
            Noteid:
            <asp:TextBox ID="NoteidTextBox" runat="server" Text='<%# Bind("Noteid") %>' />
            <br />
            Userid:
            <asp:TextBox ID="UseridTextBox" runat="server" Text='<%# Bind("Userid") %>' />
            <br />
            Topics:
            <asp:TextBox ID="TopicsTextBox" runat="server" Text='<%# Bind("Topics") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Introduction:
            <asp:TextBox ID="IntroductionTextBox" runat="server" 
                Text='<%# Bind("Introduction") %>' />
            <br />
            Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Noteid:
            <asp:TextBox ID="NoteidTextBox" runat="server" Text='<%# Bind("Noteid") %>' />
            <br />
            Userid:
            <asp:TextBox ID="UseridTextBox" runat="server" Text='<%# Bind("Userid") %>' />
            <br />
            Topics:
            <asp:TextBox ID="TopicsTextBox" runat="server" Text='<%# Bind("Topics") %>' />
            <br />
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Introduction:
            <asp:TextBox ID="IntroductionTextBox" runat="server" 
                Text='<%# Bind("Introduction") %>' />
            <br />
            Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Noteid:
            <asp:Label ID="NoteidLabel" runat="server" Text='<%# Bind("Noteid") %>' />
            <br />
            Userid:
            <asp:Label ID="UseridLabel" runat="server" Text='<%# Bind("Userid") %>' />
            <br />
            Topics:
            <asp:Label ID="TopicsLabel" runat="server" Text='<%# Bind("Topics") %>' />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            Introduction:
            <asp:Label ID="IntroductionLabel" runat="server" 
                Text='<%# Bind("Introduction") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Bind("Subject") %>' />
            <br />

            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("Noteid") %>' CommandName="Accept">Accept</asp:LinkButton>
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" TypeName="campusinfosystem.controller.notecontroller">
    </asp:ObjectDataSource>
</asp:Content>
