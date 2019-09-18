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
    public partial class Gallery : System.Web.UI.Page
    {
        gallerycontroller controller = new gallerycontroller();
        galleryTableAdapter tb = new galleryTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdupld_Click(object sender, EventArgs e)
        {
            controller.add(new gallery()
            {
                Name=txtnam.Text,
                Type=txttyp.Text
            });
            int galeeryId = (from c in tb.GetData() select c.galleryid).Max();
            string vp = "~/admin/Gallery/" + galeeryId + ".jpg";
            FileUpload1.SaveAs(MapPath(vp));
        }
    }
}