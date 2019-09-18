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

namespace campusinfosystem.student
{
    
    public partial class Editprofile : System.Web.UI.Page
    {
        studentregisterTableAdapter sftd = new studentregisterTableAdapter();
        studentregistrationcontroller stcn = new studentregistrationcontroller();
        batchcontroller btcn = new batchcontroller();
        int id = 0;

        string usernam = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            usernam = sessiondata.username;
            var data = (from c in sftd.GetData() where c.username == usernam select c).SingleOrDefault();
            if (!IsPostBack)
            {
                txtfnam.Text = data.firstname;
                txtlnam.Text = data.lastname;
                txtemail.Text = data.email;
                txtmob.Text = data.mobile;
                txtdob.Text = data.dob.ToString();
                RadioButtonList1.SelectedValue = data.gender;
                txtaddress.Text = data.address;
                txtplc.Text = data.place;
                txtcity.Text = data.city;
                txtstat.Text = data.state;
                txtcountry.Text = data.country;
                txtpin.Text = data.pin.ToString();
              
            }
            id = data.studentid;

        }

        protected void cmdsave_Click(object sender, EventArgs e)
        {

            stcn.ProfileChange(new studentregistration()
            {
                
            
                Firstname= txtfnam.Text, 
                Lastname=txtlnam.Text, 
               Email=txtemail.Text, 
                Mobile= txtmob.Text, 
                Dob= Convert.ToDateTime(txtdob.Text),
                Gender=RadioButtonList1.SelectedValue, 
                Address=txtaddress.Text, 
                Place=txtplc.Text, 
                City=txtcity.Text,
                State=txtstat.Text, 
                Country= txtcountry.Text, 
              Pin=int.Parse(txtpin.Text), 
              Course=ddlcourse.SelectedValue, 
              Batchid =int.Parse(ddlbatch.SelectedValue),
              Studentid=id
                }); 
        

           
        }

        protected void ddlcourse_DataBound(object sender, EventArgs e)
        {
             var data = (from c in sftd.GetData() where c.username == usernam select c).SingleOrDefault();
             ddlcourse.Items.Insert(0, data.course);

                
        }

        protected void ddlbatch_DataBound(object sender, EventArgs e)
        {
            
            var data = (from c in sftd.GetData() where c.username == usernam select c).SingleOrDefault();
            var batchname = (from c in btcn.GetAll() where c.Batchid == data.batchid select c.Batch).SingleOrDefault();
            ddlbatch.Items.Insert(0, batchname);

        }
    }
}