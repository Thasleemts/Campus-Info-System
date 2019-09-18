using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.controller;
using campusinfosystem.model;

namespace campusinfosystem.Alumin
{
    public partial class Editprofiles : System.Web.UI.Page
    {
        string username = "";
        int id = 0;
        aluminregistrationTableAdapter altd = new aluminregistrationTableAdapter();
        aluminregistrationcontroller alcn = new aluminregistrationcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
            var data = (from c in altd.GetData() where c.username == username select c).SingleOrDefault();
            if (!IsPostBack)
            {
                txtnam.Text = data.name;
                txtyrofpassot.Text = data.Yearofpassout;
                txtcorse.Text = data.Course;
                txtbatch.Text = data.Batchid.ToString();
                txtaddres.Text = data.Address;
                txtplac.Text = data.Place;
                txtcity.Text = data.City;
                txtstat.Text = data.state;
                txtcontry.Text = data.country;
                txtpin.Text = data.pin.ToString();
                txtphone.Text = data.phone;
                txtmob.Text = data.mob;
                txtemail.Text = data.email;
                rdbgndr.SelectedValue = data.gender;
                txtdob.Text = data.DOB.ToString();


            }
            id = data.id;

        }

        protected void cmdsave_Click(object sender, EventArgs e)
        {
            alcn.UpdateProfile(new aluminregistration()
            {
                Id = id,
                Name = txtnam.Text,
                Yearofpassout = txtyrofpassot.Text,
                Course = txtcorse.Text,
                Batch = int.Parse(txtbatch.Text),
                Address = txtaddres.Text,
                Place = txtplac.Text,
                City = txtcity.Text,
                State = txtstat.Text,
                Country = txtcontry.Text,
                Pin = int.Parse(txtpin.Text),
                Phone = txtphone.Text,
                Mob = txtmob.Text,
                Email = txtemail.Text,
                Gender = rdbgndr.SelectedValue,
                Dob = DateTime.Parse(txtdob.Text),


            });
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdob.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}