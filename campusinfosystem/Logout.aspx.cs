using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.common;
namespace campusinfosystem
{
    public partial class Logout : System.Web.UI.Page
    {
        logincontroller controller = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            controller.OnlineStatus("offline", sessiondata.username);
            Response.Redirect("LoginForm.aspx");
        }
    }
}