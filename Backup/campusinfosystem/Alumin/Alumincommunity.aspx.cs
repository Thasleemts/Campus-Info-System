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
     public partial class Alumincommunity : System.Web.UI.Page
    {
        communitycontroller cmcn = new communitycontroller();
         aluminregistrationcontroller alcn=new aluminregistrationcontroller();
         string username=" ";
        protected void Page_Load(object sender, EventArgs e)
        {
            username=sessiondata.username;
        }

        protected void cmdsavecommunity_Click(object sender, EventArgs e)
        {
            var aluminid=(from c in alcn.GetAll()where c.Username==username select c.Id).SingleOrDefault();
            cmcn.add(new community()
            {
                Ownerid = aluminid,
                Date = DateTime.Today,
                Name = txtcmmntynam.Text,
                Category = txtcategory.Text
            });
        }
    }
}