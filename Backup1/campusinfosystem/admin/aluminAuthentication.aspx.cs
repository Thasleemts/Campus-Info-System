using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;

namespace campusinfosystem.admin
{
    public partial class aluminAuthentication : System.Web.UI.Page
    {
        aluminregistrationcontroller alcn = new aluminregistrationcontroller();
        logincontroller lgcn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Accept")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                var username = (from c in alcn.GetAll() where c.Id == id select c.Username).SingleOrDefault();
                var loginid = (from c in lgcn.GetAll() where c.Username == username select c.Loginid).SingleOrDefault();
                lgcn.Updatestatus("Accept", loginid);
                
            }
        }
    }
}