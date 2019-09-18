using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.common;
using campusinfosystem.model;

namespace campusinfosystem.student
{
    public partial class studentfeedback : System.Web.UI.Page
    {
        feedbackcontroller fdcn = new feedbackcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsend_Click(object sender, EventArgs e)
        {
            string sendername = sessiondata.username;
            fdcn.add(new feedback
            {
                Sender = sendername,
                Description = txtdesc.Text,
                Postdate = DateTime.Today
            });

        }
    }
}