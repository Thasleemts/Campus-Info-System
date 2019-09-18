<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.Master" AutoEventWireup="true" CodeBehind="admihom.aspx.cs" Inherits="campusinfosystem.admin.admihom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="full" id="dash1">
    
        <div class="content" style="background-color:#E4E4E4; width:99.5%" >
        	<div class="show_date">
                <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></div>
            <div class="clear"></div>
        </div>
    
		<div class="content">
        	<div class="grid4" style="background-color:#578ebe">
            <a href="studentauthentication.aspx">
            <br/><font>Approve</font><br/>Students<br/><br/><br/></a></div>
            
            <div class="grid4" style="background-color:#e35b5a">
            <a href="staffauthentication.aspx"><br/><font>Approve</font><br/>
          Staff Requsets<br/><br/><br/></a></div>

          <div class="grid4" style="background-color:#e35b5a">
            <a href="aluminAuthentication.aspx"><br/><font>Approve</font><br/>
          Alumin Requsets<br/><br/><br/></a></div>

          <div class="grid4" style="background-color:#e35b5a">
            <a href="NoteAuthentication.aspx"><br/><font>Approve</font><br/>
          Note<br/><br/><br/></a></div>

           <div class="grid4" style="background-color:#44b6ae"><a href="Coursecontrolling.aspx"><br/><font>
           Update</font><br/>Course Details<br/><br/><br/></a></div>

            <div class="grid4" style="background-color:#8775a7"><br/>
            <a href="Gallery.aspx"><font>Create</font><br/>
            Gallery<br/><br/><br/></a></div>

       	  <div class="grid4" style="background-color:#578ebe"><a href="newnotice.aspx"><br/><font>Create</font><br/>
       	  Notice Board<br/><br/><br/></a></div>
           
          <div class="grid4" style="background-color:#e35b5a">
          <a href="Blogviews.aspx">
          <br/><font>View</font><br/>
            Blogs<br/>
            <br/><br/></a></div>

            <div class="grid4" style="background-color:#578ebe"><a href="Notification.aspx"><br/><font>Create</font><br/>
       	  Notification<br/><br/><br/></a></div>
           
          <div class="grid4" style="background-color:#44b6ae"><a href="newbatch.aspx"><br/>
          <font>Update</font><br/>
          Batch Details<br/><br/><br/></a></div>

            <div class="grid4" style="background-color:#8775a7"><a href="newbranch.aspx"><br/><font>Update</font><br/>
            Branch Details<br/><br/><br/></a></div>

            <div class="grid4" style="background-color:#8775a7"><br/>
            <a href="News.aspx"><font>Create</font><br/>
            News<br/><br/><br/></a></div>
	            
            <div class="clear"></div>
        
        </div>    

        </div>
</asp:Content>
