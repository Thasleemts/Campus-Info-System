using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;

namespace campusinfosystem.admin
{
    public partial class CreateMail : System.Web.UI.Page
    {
        mailcontroller mlcn = new mailcontroller();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        MailHandler m = new MailHandler();
        protected void cmdsend_Click(object sender, EventArgs e)
        {
            mlcn.add(new mail()
            {
                Sender="Admin",
                Reciever=txtrcvr.Text,
                Subject=txtsubj.Text,
                Message=txtmsg.Text,
                Date=DateTime.Today
            });
            m.SendMail(txtrcvr.Text, txtsubj.Text, txtmsg.Text);
            Response.Write("<script>alert('Mail Send')</script>");
        }
    }
}