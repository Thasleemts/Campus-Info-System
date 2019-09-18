using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;
using campusinfosystem.model.DataSet1TableAdapters;

namespace campusinfosystem.student
{
    public partial class studentjoincommunity : System.Web.UI.Page
    {
        joiningcommunitycontroller jncn = new joiningcommunitycontroller();
        studentregisterTableAdapter sdtd = new studentregisterTableAdapter();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var userid = (from c in sdtd.GetData()where c.username== username select c.studentid).SingleOrDefault();
            if (e.CommandName == "StudentJoin")
            {
                jncn.add(new joincommunity
                {
                    Communityid = Convert.ToInt32(e.CommandArgument),
                    Userid = userid,
                    Joiningdate = DateTime.Today
                });

            }
        }
    }
}