<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="staffhome.aspx.cs" Inherits="campusinfosystem.staff.staffhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div style="height:500px; width:800px; margin-left:100px; margin-top:10px;">
     <div style="height:300px; width:300px; float:left;">
     <div class="subhead">News And Events</div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
             Height="202px" Width="228px" BackColor="White" BorderColor="#336666" 
             BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
     </div>
       <div style="height:300px; width:300px; float:left;">
       <div class="subhead">Notice<asp:FormView ID="FormView2" runat="server" 
               BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
               CellPadding="4" DataSourceID="ObjectDataSource2" GridLines="Horizontal">
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
           <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           <FooterStyle BackColor="White" ForeColor="#333333" />
           <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
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
           <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="White" ForeColor="#333333" />
           </asp:FormView>
           <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
               SelectMethod="GetAll" TypeName="campusinfosystem.controller.noticecontroller">
           </asp:ObjectDataSource>
           </div>
       </div>
         <div style="height:300px; width:300px; float:left;">
         <div class="subhead">Blog<asp:DetailsView ID="DetailsView1" runat="server" 
                 AutoGenerateRows="False" DataSourceID="ObjectDataSource3" Height="50px" 
                 Width="125px">
             <Fields>
                 <asp:BoundField DataField="Blogid" HeaderText="Blogid" 
                     SortExpression="Blogid" />
                 <asp:BoundField DataField="Blogname" HeaderText="Blogname" 
                     SortExpression="Blogname" />
                 <asp:BoundField DataField="Createdby" HeaderText="Createdby" 
                     SortExpression="Createdby" />
                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                 <asp:BoundField DataField="Description" HeaderText="Description" 
                     SortExpression="Description" />
             </Fields>
             </asp:DetailsView>
             <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                 SelectMethod="GetAll" TypeName="campusinfosystem.controller.blogcontroller">
             </asp:ObjectDataSource>
             </div>
         </div>
 
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetAll" TypeName="campusinfosystem.controller.newscontroller">
    </asp:ObjectDataSource>
    </div>
</asp:Content>
