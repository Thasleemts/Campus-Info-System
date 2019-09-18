using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.common;
using campusinfosystem.controller;
using campusinfosystem.model;

namespace campusinfosystem.staff
{
    public partial class EditProfile : System.Web.UI.Page
    {
        staffregistrationTableAdapter std = new staffregistrationTableAdapter();
        staffregistrationcontroller stcn = new staffregistrationcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = sessiondata.username;
            var data = (from c in std.GetData() where c.username == username select c).SingleOrDefault();
            if (!IsPostBack)
            {
                txtfnam.Text = data.firstname;
                txtlnam.Text = data.lastname;
                txtemail.Text = data.email;
                txtmob.Text = data.mobile;
                rdbgndr.Text = data.gender;
                txtaddress.Text = data.address;
                txtplace.Text = data.place;
                txtcity.Text = data.city;
                txtstat.Text = data.state;
                txtcountry.Text = data.country;
                txtpin.Text = data.pin.ToString();
                txtexp.Text = data.experience;
                txtdob.Text = data.dob.ToString();
                txtdpt.Text = data.department;
                
             }
           int ID = data.staffid;

        }

        protected void cmdsave_Click(object sender, EventArgs e)
        {
            stcn.UpdateProfile(new staffregistration
            {
                Firstname = txtfnam.Text,
                Lastname = txtlnam.Text,
                Email = txtemail.Text,
                Mobile = txtmob.Text,
                Gender = rdbgndr.SelectedValue,
                Address = txtaddress.Text,
                Place = txtplace.Text,
                City = txtcity.Text,
                State = txtstat.Text,
                Country = txtcountry.Text,
                Pin = int.Parse(txtpin.Text),
                Experirience = txtexp.Text,
                Dob = DateTime.Parse(txtdob.Text),
                Department = txtdpt.Text
            });

        }
    }
}