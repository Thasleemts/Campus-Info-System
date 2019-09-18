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
    public partial class News : System.Web.UI.Page
    {
        newscontroller nwcn = new newscontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdupld_Click(object sender, EventArgs e)
        {
            nwcn.add(new news()
            {
                Name=txtname.Text,
                Venu=txtvenu.Text,
                Date=DateTime.Today,
                Description=txtdesc.Text

            });
        }
    }
}