using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class greetings
    {
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _nam;

        public string Name
        {
            get { return _nam; }
            set { _nam = value; }
        }
        private string _sender;

        public string Sender
        {
            get { return _sender; }
            set { _sender = value; }
        }
        private string _rcvr;

        public string Reciecver
        {
            get { return _rcvr; }
            set { _rcvr = value; }
        }
        private string _subject;

        public string Subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
        private string _msg;

        public string Message
        {
            get { return _msg; }
            set { _msg = value; }
        }
        private DateTime _date;
                    
        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        
        public greetings()
        {

        }
        public greetings(int id,string name,string sender,string reciever,DateTime date)
        {
            this._id = id;
            this._nam = name;
            this._sender = sender;
            this._rcvr = reciever;
            this._date = date;

        }
    }
}
