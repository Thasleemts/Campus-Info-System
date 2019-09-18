using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using campusinfosystem.controller;
using campusinfosystem.common;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.Alumin
{
    public partial class Aluminchat : System.Web.UI.Page
    {
        ChatTableAdapter chattb=new ChatTableAdapter();
        chatcontroller controller = new chatcontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = sessiondata.username;
        }

        protected void cmbSend_Click(object sender, EventArgs e)
        {

            controller.add(new chat()
            {
                Message=txtmessage.Text,
                Sender=HiddenField1.Value,
                Reciever=HiddenField2.Value,
                 Date=DateTime.Today
            });
            var content = string.Format("From:{0}\n To:{1}\n Message:{2}\n", HiddenField1.Value, HiddenField2.Value, txtmessage.Text);
            txtMessages.Text += content;
            txtmessage.Text = "";
        }

        protected void drponline_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtMessages.Text = "";
            HiddenField2.Value = drponline.SelectedValue;
            UpdateMessage(HiddenField1.Value);
        }
        public void UpdateMessage(string user)
        {
           
                txtMessages.Visible = true;
                var data = from c in chattb.GetData()
                           where c.sender== user && c.reciever == HiddenField2.Value || c.sender  == HiddenField2.Value && c.reciever == user
                           select c;
                foreach (var item in data)
                {
                    var content = string.Format("From:{0}\n To:{1}\n Message:{2}\n", item.sender, item.reciever, item.message);
                    txtMessages.Text += content;
                }
            }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            txtMessages.Text = "";

            UpdateMessage(HiddenField1.Value);
        }

        protected void drponline_DataBound(object sender, EventArgs e)
        {
            drponline.Items.Insert(0, "--Select One--");
        }
        }

    }
