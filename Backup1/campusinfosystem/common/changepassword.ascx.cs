using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;
using campusinfosystem.controller;
using campusinfosystem.model.DataSet1TableAdapters;

namespace campusinfosystem.common
{
    public partial class changepassword : System.Web.UI.UserControl
    {
        loginTableAdapter lgtd = new loginTableAdapter();
        logincontroller lgcn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            txtusrnam.Text = sessiondata.username;
        }

        protected void cmdupdate_Click(object sender, EventArgs e)
        {


            var data = (from c in lgtd.GetData() where c.username==txtusrnam.Text && c.password == txtcurntpsw.Text select c).SingleOrDefault();
            if (data!=null)
            {
                lgcn.UpdatePassword(txtusrnam.Text,txtnwpsw.Text);

            }
            else
            {
                lblpsw.Text = "Invalid Username Or Password";
            }
        }
    }
}