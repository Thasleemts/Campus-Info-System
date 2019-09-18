<%@ Page Title="" Language="C#" MasterPageFile="~/Alumin/AluminMaster.Master" AutoEventWireup="true" CodeBehind="Aluminhome.aspx.cs" Inherits="campusinfosystem.Alumin.Aluminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:800px;width:100%">
<div style="height:300px; width:300px; float:left;">
 <div class="subhead">News And Events<asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" GridLines="Horizontal">
    <EditItemTemplate>
        Newsid:
        <asp:TextBox ID="NewsidTextBox" runat="server" Text='<%# Bind("Newsid") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Venu:
        <asp:TextBox ID="VenuTextBox" runat="server" Text='<%# Bind("Venu") %>' />
        <br />
        Date:
        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" 
            Text='<%# Bind("Description") %>' />
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
        Newsid:
        <asp:TextBox ID="NewsidTextBox0" runat="server" Text='<%# Bind("Newsid") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Venu:
        <asp:TextBox ID="VenuTextBox0" runat="server" Text='<%# Bind("Venu") %>' />
        <br />
        Date:
        <asp:TextBox ID="DateTextBox0" runat="server" Text='<%# Bind("Date") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox0" runat="server" 
            Text='<%# Bind("Description") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Newsid:
        <asp:Label ID="NewsidLabel" runat="server" Text='<%# Bind("Newsid") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Venu:
        <asp:Label ID="VenuLabel" runat="server" Text='<%# Bind("Venu") %>' />
        <br />
        Date:
        <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" 
            Text='<%# Bind("Description") %>' />
        <br />

    </ItemTemplate>

        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
</asp:FormView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.newscontroller">
</asp:ObjectDataSource>
     <asp:FormView ID="FormView3" runat="server" DataSourceID="ObjectDataSource3">
         <EditItemTemplate>
             Blogid:
             <asp:TextBox ID="BlogidTextBox" runat="server" Text='<%# Bind("Blogid") %>' />
             <br />
             Blogname:
             <asp:TextBox ID="BlognameTextBox" runat="server" 
                 Text='<%# Bind("Blogname") %>' />
             <br />
             Createdby:
             <asp:TextBox ID="CreatedbyTextBox" runat="server" 
                 Text='<%# Bind("Createdby") %>' />
             <br />
             Date:
             <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
             <br />
             Description:
             <asp:TextBox ID="DescriptionTextBox" runat="server" 
                 Text='<%# Bind("Description") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                 CommandName="Update" Text="Update" />
             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                 CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <InsertItemTemplate>
             Blogid:
             <asp:TextBox ID="BlogidTextBox" runat="server" Text='<%# Bind("Blogid") %>' />
             <br />
             Blogname:
             <asp:TextBox ID="BlognameTextBox" runat="server" 
                 Text='<%# Bind("Blogname") %>' />
             <br />
             Createdby:
             <asp:TextBox ID="CreatedbyTextBox" runat="server" 
                 Text='<%# Bind("Createdby") %>' />
             <br />
             Date:
             <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
             <br />
             Description:
             <asp:TextBox ID="DescriptionTextBox" runat="server" 
                 Text='<%# Bind("Description") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                 CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                 CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
         <ItemTemplate>
             Blogid:
             <asp:Label ID="BlogidLabel" runat="server" Text='<%# Bind("Blogid") %>' />
             <br />
             Blogname:
             <asp:Label ID="BlognameLabel" runat="server" Text='<%# Bind("Blogname") %>' />
             <br />
             Createdby:
             <asp:Label ID="CreatedbyLabel" runat="server" Text='<%# Bind("Createdby") %>' />
             <br />
             Date:
             <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
             <br />
             Description:
             <asp:Label ID="DescriptionLabel" runat="server" 
                 Text='<%# Bind("Description") %>' />
             <br />

         </ItemTemplate>
     </asp:FormView>
     <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
         SelectMethod="GetAll" TypeName="campusinfosystem.controller.blogcontroller">
     </asp:ObjectDataSource>
    </div>



</div>
<div style="height:300px; width:300px; float:left;">
 <div class="subhead">Notice<asp:FormView ID="FormView2" runat="server" 
         DataSourceID="ObjectDataSource2">
     <EditItemTemplate>
         Noticeid:
         <asp:TextBox ID="NoticeidTextBox" runat="server" 
             Text='<%# Bind("Noticeid") %>' />
         <br />
         From:
         <asp:TextBox ID="FromTextBox" runat="server" Text='<%# Bind("From") %>' />
         <br />
         Notice:
         <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
         <br />
         Date:
         <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
         <br />
         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
             CommandName="Update" Text="Update" />
         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
             CausesValidation="False" CommandName="Cancel" Text="Cancel" />
     </EditItemTemplate>
     <InsertItemTemplate>
         Noticeid:
         <asp:TextBox ID="NoticeidTextBox" runat="server" 
             Text='<%# Bind("Noticeid") %>' />
         <br />
         From:
         <asp:TextBox ID="FromTextBox" runat="server" Text='<%# Bind("From") %>' />
         <br />
         Notice:
         <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
         <br />
         Date:
         <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
         <br />
         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
             CommandName="Insert" Text="Insert" />
         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
             CausesValidation="False" CommandName="Cancel" Text="Cancel" />
     </InsertItemTemplate>
     <ItemTemplate>
         Noticeid:
         <asp:Label ID="NoticeidLabel" runat="server" Text='<%# Bind("Noticeid") %>' />
         <br />
         From:
         <asp:Label ID="FromLabel" runat="server" Text='<%# Bind("From") %>' />
         <br />
         Notice:
         <asp:Label ID="NoticeLabel" runat="server" Text='<%# Bind("Notice") %>' />
         <br />
         Date:
         <asp:Label ID="DateLabel" runat="server" Text='<%# Bind("Date") %>' />
         <br />

     </ItemTemplate>
     </asp:FormView>
     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
         SelectMethod="GetAll" TypeName="campusinfosystem.controller.noticecontroller">
     </asp:ObjectDataSource>
    </div>



    </div>
</div>
</asp:Content>
