using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.model.DataSet1TableAdapters;

namespace campusinfosystem.admin
{
    public partial class staffauthentication : System.Web.UI.Page
    {
        staffregistrationcontroller stfcn = new staffregistrationcontroller();
        loginTableAdapter lgncn=new loginTableAdapter();
        logincontroller lgcn = new logincontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //}

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Accept")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                stfcn.Updatestatus("Accept", id);
                string username = stfcn.GetUsername(id);
                //var  logindata=( from c in lgncn.GetData() where c.username==username select c).SingleOrDefault();
                int loginid = (from c in lgncn.GetData() where c.username == username select c.loginid).SingleOrDefault();
                //lgcn.Updatestatus("Accept",logindata.loginid);
                lgcn.Updatestatus("Accept", loginid);
                GridView1.DataBind();
            }

        }

    
        
      

      
    }
}