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
    public partial class newbranch : System.Web.UI.Page
    {
        branchcontroller brncn = new branchcontroller();
        branchcontroller brcn = new branchcontroller();
        BranchTableAdapter tb = new BranchTableAdapter();
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsav_Click(object sender, EventArgs e)
        {
            brncn.add(new branch
            {
                Branch = txtbrch.Text
            });

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteBranch")
            {
                id = Convert.ToInt32(e.CommandArgument);
                brcn.delete(id);
                GridView1.DataBind();
            }
            if (e.CommandName=="EditBranch")
            {
                Panel1.Visible = true;
                 id = Convert.ToInt32(e.CommandArgument);
                var details = (from c in tb.GetData() where c.branchid == id select c).SingleOrDefault();
                txtBranchName.Text = details.branch;
                HiddenField1.Value = id.ToString();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int branchid = int.Parse(HiddenField1.Value);
            brncn.Update(branchid, txtBranchName.Text);
            Panel1.Visible = false;
        }
    }
}