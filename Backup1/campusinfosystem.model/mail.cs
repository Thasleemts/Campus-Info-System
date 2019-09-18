using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class mail
    {
        private int _mailid;

        public int Mailid
        {
            get { return _mailid; }
            set { _mailid = value; }
        }
        private string _sender;

        public string Sender
        {
            get { return _sender; }
            set { _sender = value; }
        }
        private string _recver;

        public string Reciever
        {
            get { return _recver; }
            set { _recver = value; }
        }
        private string _subject;

        public string Subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
        private string _mssg;

        public string Message
        {
            get { return _mssg; }
            set { _mssg = value; }
        }
        private DateTime _dat;

        public DateTime Date
        {
            get { return _dat; }
            set { _dat = value; }
        }
        public mail()
        {

        }
        public mail(int mailid,string sender,string reciever,string subject,string message,DateTime date)
        {
            this._mailid = mailid;
            this._sender = sender;
            this._recver = reciever;
            this._subject = subject;
            this._mssg = message;
            this._dat = date;
        }
    }
}
