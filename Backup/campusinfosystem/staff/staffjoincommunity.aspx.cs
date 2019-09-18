using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.common;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.controller;
using campusinfosystem.model;


namespace campusinfosystem.staff
{
    public partial class staffjoincommunity : System.Web.UI.Page
    {
        joiningcommunitycontroller jncn = new joiningcommunitycontroller();
        staffregistrationTableAdapter sttd = new staffregistrationTableAdapter();
           string username="";
        protected void Page_Load(object sender, EventArgs e)
        {
             username = sessiondata.username;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            var userid=(from c in sttd.GetData()where c.username==username select c.staffid).SingleOrDefault();
            if (e.CommandName=="JoinCommunity")
            {
                jncn.add(new joincommunity{

                    Communityid=Convert.ToInt32(e.CommandArgument),
                    Userid=userid,
                    Joiningdate=DateTime.Today
                
                });
            }
        }
    }
}