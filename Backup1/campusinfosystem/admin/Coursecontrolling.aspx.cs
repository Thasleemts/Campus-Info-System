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
    public partial class Coursecontrolling : System.Web.UI.Page
    {
        coursecontroller crcn = new coursecontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="DeleteCourse")
            {
                int courseid = Convert.ToInt32(e.CommandArgument);
                crcn.delete(courseid);
                GridView1.DataBind();
            }
        }
    }
}