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
    public partial class stfregistration : System.Web.UI.Page
    {
        staffregistrationcontroller stfcn = new staffregistrationcontroller();
        logincontroller lgncn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            bool users = lgncn.Valid(txtusername.Text);
            if (users == true)
            {
                stfcn.add(new staffregistration()
                {
                    Firstname = txtfnam.Text,
                    Lastname = txtlnam.Text,
                    Email = txtemail.Text,
                    Mobile = txtmob.Text,
                    Gender = rdbgndr.SelectedValue,
                    Address = txtaddr.Text,
                    Place = txtplc.Text,
                    City = txtcity.Text,
                    State = txtstate.Text,
                    Country = txtcountry.Text,
                    Pin = int.Parse(txtpin.Text),
                    Experirience = txtexp.Text,
                    Dob = DateTime.Parse(txtdob.Text),
                    Department = txtdob.Text,
                    Username = txtusername.Text,
                    Status = "pending"

                });
                lgncn.add(new login()
                {
                    Username = txtusername.Text,
                    Password = txtpassword.Text,
                    Role = "staff",
                    Status = "pending",
                    Onlinestatus = "offline"
                });
            }
            else
            {
                lblxixst.Text = "Username already exists";
            }

        }
       
        
      
    }
}