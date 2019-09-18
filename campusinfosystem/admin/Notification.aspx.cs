using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.model;

namespace campusinfosystem.admin
{
    
    public partial class Notification : System.Web.UI.Page
    {
        notificationcontroller ntcn = new notificationcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdupld_Click(object sender, EventArgs e)
        {
            ntcn.add(new notification()
            {
                Branchid=int.Parse(drpbranch.SelectedValue),
                Batchid=int.Parse(drpbatch.SelectedValue),
                Description=txtdesc.Text,
                Subject=txtsubj.Text
            });
        }

        protected void drpbranch_DataBound(object sender, EventArgs e)
        {
            drpbranch.Items.Insert(0, "--Select One--");
        }

        protected void drpbatch_DataBound(object sender, EventArgs e)
        {
            drpbatch.Items.Insert(0, "--Select One--");
        }
    }
}