using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
   public class chat
    {
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _ssender;

        public string Sender
        {
            get { return _ssender; }
            set { _ssender = value; }
        }
        private string _recver;

        public string Reciever
        {
            get { return _recver; }
            set { _recver = value; }
        }
        private string _mesge;

        public string Message
        {
            get { return _mesge; }
            set { _mesge = value; }
        }
        private DateTime _dat;

        public DateTime Date
        {
            get { return _dat; }
            set { _dat = value; }
        }
        public chat()
        {

        }
        public chat(int id,string sender,string reciever,string message,DateTime date)
        {
            this._id=id;
            this._ssender=sender;
            this._recver = reciever;
            this._mesge = message;
            this._dat = date;
        }
    }
}
