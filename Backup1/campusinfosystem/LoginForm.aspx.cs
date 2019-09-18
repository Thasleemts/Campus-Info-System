using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.common;

namespace campusinfosystem
{
    public partial class LoginForm : System.Web.UI.Page
    {

        logincontroller lgcn = new logincontroller();
        studentregistrationcontroller stcn = new studentregistrationcontroller();
        staffregistrationcontroller sfcn = new staffregistrationcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdlgin_Click(object sender, EventArgs e)
        {
              sessiondata.username = txtunm.Text;
            bool flag = lgcn.IsValidUser(txtunm.Text, txtpsw.Text);
            if (flag==true)
            {
                string role = lgcn.GetRole(txtunm.Text);
                if (role=="Admin")
                {
                    Response.Redirect("~/admin/admihom.aspx");
                }
                else if (role=="student")
                {
                    Response.Redirect("~/student/stuhome.aspx");
                }
                else if (role == "staff")
                {
                    Response.Redirect("~/staff/staffhome.aspx");
                }
                else if (role == "Alumin")
                {
                    Response.Redirect("~/Alumin/AluminHome.aspx");
                }
                else
                {
                    lblinvalidpsw.Text = "Invalid Username or Password";
                }
            }
            else
            {
                lblinvalidpsw.Text = "Invalid Username or Password";
            }
          
        }
        }
    }
