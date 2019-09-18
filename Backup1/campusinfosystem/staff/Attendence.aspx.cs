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

namespace campusinfosystem.staff
{
    public partial class Attendence : System.Web.UI.Page
    {
      
        attendencecontroller atcn = new attendencecontroller();
        studentregisterTableAdapter std = new studentregisterTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cmdUpld_Click(object sender, EventArgs e)
        {
            var stdid = (from c in std.GetData()select c.studentid).SingleOrDefault();
            atcn.add(new attendence()
            {
                Studentid=int.Parse(ddlstudntname.SelectedValue),
                Batchid=int.Parse(ddlbatcid.SelectedValue),
                Branchid=int.Parse(ddlbrnchid.SelectedValue),
                Totaldays=int.Parse(txttotldys.Text),
                Attendence = int.Parse(txtattnde.Text),
                Percentage=txtpercntge.Text

            });
        }
    }
}