using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class feedback
    {
        private int _fedbckid;

        public int Feedbackid
        {
            get { return _fedbckid; }
            set { _fedbckid = value; }
        }
        private string _sender;

        public string Sender
        {
            get { return _sender; }
            set { _sender = value; }
        }
        private string _desc;

        public string Description
        {
            get { return _desc; }
            set { _desc = value; }
        }
        private DateTime _postdate;

        public DateTime Postdate
        {
            get { return _postdate; }
            set { _postdate = value; }
        }
        public feedback()
        {

        }
        public feedback(int feedbackid,string sender,string description,DateTime postdate)
        {
            this._fedbckid = feedbackid;
            this._sender = sender;
            this._desc = description;
            this._postdate = postdate;
        }
    }
}
