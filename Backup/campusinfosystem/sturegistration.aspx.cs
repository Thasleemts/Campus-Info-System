using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.model;
using campusinfosystem.controller;



namespace campusinfosystem
{
    public partial class sturegistration : System.Web.UI.Page
    {
        studentregistrationcontroller stcn = new studentregistrationcontroller();
        logincontroller lgcn = new logincontroller();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, "select one");
        }

        protected void cmdsubmit_Click1(object sender, EventArgs e)
        {
            stcn.add(new studentregistration()
            {
                Firstname = txtfnm.Text,
                Lastname = txtlnm.Text,
                Email = txtemail.Text,
                Mobile = txtmob.Text,
                Dob = DateTime.Parse(txtdob.Text),
                Gender = rdbgnder.SelectedValue,
                Address = txtaddress.Text,
                Place = txtplc.Text,
                City = txtcity.Text,
                State = txtstat.Text,
                Country = txtcoutr.Text,
                Pin = int.Parse(txtpin.Text),
                Course = DropDownList2.SelectedValue,
                Batchid = int.Parse(DropDownList1.SelectedValue),
                Username = txtusrnm.Text,
                Status = "Pending"

            });


            lgcn.add(new login()
            {
                Username = txtusrnm.Text,
                Password = txtpsw.Text,
                Role = "student",
                Status = "pending",
                Onlinestatus = "offline"
            });
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList2_DataBound(object sender, EventArgs e)
        {
            DropDownList2.Items.Insert(0, "select one");
        }

     
    }
}