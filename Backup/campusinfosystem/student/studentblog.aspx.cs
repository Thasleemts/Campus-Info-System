using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;

namespace campusinfosystem.student
{
    public partial class studentblog : System.Web.UI.Page
    {
        blogcontroller bgcn = new blogcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdupload_Click(object sender, EventArgs e)
        {
            string creatername=sessiondata.username;
            bgcn.add(new blog
            {
                Blogname = txtblgname.Text,
                Createdby = creatername,
                Date = DateTime.Today,
                Description = txtdesc.Text
            });
                
        }
    }
}