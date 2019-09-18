using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net.Mail;
using System.Net;


namespace campusinfosystem.common
{
    public class MailHandler
    {
        public string SendMail(String To, string Subject, string body)
        {
            try
            {
                MailMessage m = new MailMessage();

                string[] toIds = To.Split(';');

                foreach (var item in toIds)
                {
                    m.To.Add(item);
                }

                m.From = new MailAddress("From Address");

                m.Body = body;
                m.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient(); //      <--- use localhost

                m.Subject = Subject.Trim();
                m.Sender = new MailAddress("Sender Address");

                m.To.Add(new MailAddress(To));

                //if (attachments.HasFile)
                //{
                //    attachments.SaveAs(MapPath("~/Attached/" + attachments.FileName));
                //    Attachment attachment = new Attachment(MapPath("~/Attached/" + attachments.FileName));
                //    m.Attachments.Add(attachment);
                //}

                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential("Mail id", "Password");
                smtp.Send(m);

                //System.Web.Mail.MailMessage Msg = new System.Web.Mail.MailMessage();
                //// Sender e-mail address.
                //Msg.From = txtFrom.Text;
                //// Recipient e-mail address.
                //Msg.To = txtTo.Text;
                //Msg.Subject = txtSubject.Text;
                //Msg.Body = txtBody.Text;
                //// your remote SMTP server IP.
                //SmtpMail.SmtpServer = "smtp.gmail.com";
                //SmtpMail.Send(Msg);
                //Msg = null;
                //Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='SendMail.aspx';}</script>");
                return "Mail send...";
            }
            catch (Exception ex)
            {

                return ex.Message;
            }
        }
    }
}