using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;

namespace campusinfosystem.Alumin
{
    public partial class AluminProfileEdits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = sessiondata.username;
        }

        protected void cmdedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Alumin/Editprofiles.aspx");
        }
    }
}