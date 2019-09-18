using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;
using campusinfosystem.controller;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.student
{
    public partial class communityform : System.Web.UI.Page
    {
        communitycontroller cmcn = new communitycontroller();
        studentregisterTableAdapter stdt = new studentregisterTableAdapter();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            username = sessiondata.username;
           
        }

        protected void cmdsave_Click(object sender, EventArgs e)
        {
            var studentid = (from c in stdt.GetData() where c.username == username select c.studentid).SingleOrDefault();
            cmcn.add(new community()
            {
                Ownerid=studentid,
                Date = DateTime.Today,
                Name=txtname.Text,
                Category=txtcategory.Text
            });
        }

        
    }
}