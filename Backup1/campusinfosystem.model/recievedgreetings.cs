using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class recievedgreetings
    {
        private int _rcvdid;

        public int Recievedid
        {
            get { return _rcvdid; }
            set { _rcvdid = value; }
        }
        private string _sendr;

        public string Sender
        {
            get { return _sendr; }
            set { _sendr = value; }
        }
        private string _rcvr;

        public string Reciever
        {
            get { return _rcvr; }
            set { _rcvr = value; }
        }
        private string _msg;

        public string Message
        {
            get { return _msg; }
            set { _msg = value; }
        }
        private DateTime _dat;

        public DateTime Date
        {
            get { return _dat; }
            set { _dat = value; }
        }
        public recievedgreetings()
        {

        }
        public recievedgreetings(int recieveid,string sender,string reciever,string message,DateTime date)
        {
            this._rcvdid =recieveid;
            this._sendr = sender;
            this._rcvr = reciever;
            this._msg = message;
            this._dat = date;

        }

    }
}
