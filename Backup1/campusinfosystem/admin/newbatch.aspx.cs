using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.model;
using campusinfosystem.controller;
using campusinfosystem.model.DataSet1TableAdapters;

namespace campusinfosystem.admin
{
    public partial class newbatch : System.Web.UI.Page
    {
        batchcontroller btcn = new batchcontroller();
        BatchTableAdapter tb = new BatchTableAdapter();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            btcn.add(new batch()
            {
                Batch=txtbatch.Text
            });
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteBatch")
            {
                id = Convert.ToInt32(e.CommandArgument);
                btcn.delete(id);
                GridView1.DataBind();
            }
            if (e.CommandName == "EditBatch")
            {
                Panel1.Visible = true;
                id = Convert.ToInt32(e.CommandArgument);
                var details = (from c in tb.GetData() where c.batchid == id select c).SingleOrDefault();
                txtUpdateBatch.Text = details.batch;
                HiddenField1.Value = id.ToString();
                GridView1.DataBind();
            }
        }

        protected void tnUpdate_Click(object sender, EventArgs e)
        {
            int batch=int.Parse(HiddenField1.Value);
            btcn.BatchStatus(txtUpdateBatch.Text,batch);
            Panel1.Visible = false;
            GridView1.DataBind();
        }
    }
}