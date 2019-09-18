using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;

namespace campusinfosystem.Alumin
{
    public partial class AluminBlog : System.Web.UI.Page
    {
        string username = "";
        blogcontroller bgcn = new blogcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void cmdupld_Click(object sender, EventArgs e)
        {
            bgcn.add(new blog()
            {
                Blogname=txtblgnam.Text,
                Createdby=username,
                Date=DateTime.Today,
                Description=txtdes.Text
 });
        }
    }
}