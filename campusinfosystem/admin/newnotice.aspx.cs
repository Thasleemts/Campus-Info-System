using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;

namespace campusinfosystem.admin
{
    public partial class newnotice : System.Web.UI.Page
    {
        noticecontroller ntcn = new noticecontroller();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            ntcn.add(new notice()
            {
                From=txtfrm.Text,
                Notice=txtnotice.Text,
                Date = DateTime.Today

            });

        }

       
        

       

        

       

      
    }
}