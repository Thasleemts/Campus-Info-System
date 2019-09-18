using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.common;
namespace campusinfosystem.student
{
    public partial class AddGreetings : System.Web.UI.Page
    {
        greetingscontroller controller = new greetingscontroller();
        greetingsTableAdapter tb = new greetingsTableAdapter();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            username = sessiondata.username;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            controller.add(new greetings()
            {
                Name=txtgreetings.Text,
                Sender=username,
                Reciecver=txtto.Text,
                Date=DateTime.Today
            });
            int greetingid=(from c in tb.GetData() select c.id).Max();
            string vp="~/student/Greetings/"+greetingid+".jpg";
            FileUpload1.SaveAs(MapPath(vp));

        }

    }
}