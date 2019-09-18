using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;
using campusinfosystem.common;


namespace campusinfosystem.staff
{
    public partial class staffcommunity : System.Web.UI.Page
    {
        communitycontroller cmcn = new communitycontroller();
        staffregistrationTableAdapter stft = new staffregistrationTableAdapter();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void cmdsav_Click(object sender, EventArgs e)
        {
            var staffid = (from c in stft.GetData() where c.username == username select c.staffid).SingleOrDefault();
            cmcn.add(new community()
            {
                Ownerid = staffid,
                Date = DateTime.Today,
                Name = txtname.Text,
                Category = txtcateg.Text
            });
        }

  
      

       
        }
    }