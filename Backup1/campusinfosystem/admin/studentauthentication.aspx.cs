using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.admin
{
    public partial class studentauthentication : System.Web.UI.Page
    {
        studentregistrationcontroller stcn = new studentregistrationcontroller();
        loginTableAdapter login = new loginTableAdapter();
        logincontroller lgcn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="accept")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                stcn.Updatestatus("Accept", id);
          string username=stcn.GetUsername(id);
                int loginId=( from c in login.GetData() where c.username==username select c.loginid).SingleOrDefault();
                lgcn.Updatestatus("Accept",loginId);
                GridView1.DataBind();
            }
        }

       


      

      
    }
}