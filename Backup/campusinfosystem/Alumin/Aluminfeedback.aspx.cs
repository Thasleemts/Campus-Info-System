using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;

namespace campusinfosystem.Alumin
{
    public partial class Aluminfeedback : System.Web.UI.Page
    {
        string username = "";
        feedbackcontroller fdcn = new feedbackcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void cmdupld_Click(object sender, EventArgs e)
        {
            fdcn.add(new feedback()
            {
                Sender=username,
                Description=txtdsc.Text,
                Postdate=DateTime.Today
            });
        }
    }
}