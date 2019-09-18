using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.model;
using campusinfosystem.controller;

namespace campusinfosystem.admin
{
    public partial class newcourse : System.Web.UI.Page
    {
        coursecontroller coucn = new coursecontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            coucn.add(new course
            {
                Name = txtcour.Text,
                Duration = txtdur.Text,
                Fees = int.Parse(txtfee.Text),
                Eligibility = txtelig.Text,
                Totalseat = int.Parse(txttots.Text)
            });
        }
    }
}