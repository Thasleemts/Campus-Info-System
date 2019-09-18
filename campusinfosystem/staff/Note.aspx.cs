using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.common;

namespace campusinfosystem.staff
{
    public partial class Note : System.Web.UI.Page
    {
        notecontroller ntcn = new notecontroller();
        staffregistrationcontroller stcn = new staffregistrationcontroller();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void Cmdupload_Click(object sender, EventArgs e)
        {
            var userid=(from c in stcn.GetAll()where c.Username==username select c.Staffid).SingleOrDefault();
            ntcn.add(new note()
            {
                Userid=userid,
                Topics=txttopic.Text,
                Date=DateTime.Today,
                Status="Pending",
                Introduction=txtintrodction.Text,
                Subject=txtsubj.Text
            });
        }
    }
}