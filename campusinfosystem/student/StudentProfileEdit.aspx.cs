using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;

namespace campusinfosystem.student
{
    public partial class StudentProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = sessiondata.username;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/student/Editprofiles.aspx");
        }
    }
}