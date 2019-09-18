using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;

namespace campusinfosystem
{
    public partial class alumnregistration : System.Web.UI.Page
    {
        aluminregistrationcontroller alcn = new aluminregistrationcontroller();
        logincontroller lgcn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            alcn.add(new aluminregistration()
            {
                Name = txtnam.Text,
                Yearofpassout = txtyrofpass.Text,
                Course = DropDownList1.SelectedValue,
                Batch = int.Parse(DropDownList2.SelectedValue),
                Address = txtaddrs.Text,
                Place = txtplc.Text,
                City = txtcity.Text,
                State = txtstat.Text,
                Country = txtcountry.Text,
                Pin = int.Parse(txtpin.Text),
                Phone = txtphn.Text,
                Mob = txtmob.Text,
                Email = txtemail.Text,
                Gender = rdbgndr.SelectedValue,
                Dob = DateTime.Parse(txtdob.Text),
                Username = txtunam.Text
            });
            lgcn.add(new login()
            {
                Username = txtunam.Text,
                Password = txtpsw.Text,
                Role = "Alumin",
                Status = "Pending",
                Onlinestatus = "offline"
            });


        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, "select one");
        }

        protected void DropDownList2_DataBound(object sender, EventArgs e)
        {
            DropDownList2.Items.Insert(0, "select one");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdob.Text = this.Calendar1.SelectedDate.ToShortDateString();
        }

        
    }
}