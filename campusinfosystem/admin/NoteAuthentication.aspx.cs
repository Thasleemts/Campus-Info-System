using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;

namespace campusinfosystem.admin
{
    public partial class NoteAuthentication : System.Web.UI.Page
    {
        int ID = 0;
        notecontroller ntcn = new notecontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName=="Accept")
            {
                ID = Convert.ToInt32(e.CommandArgument);
                ntcn.UpdateStatus("Accept", ID);
                FormView1.DataBind();
                
            }
        }
    }
}