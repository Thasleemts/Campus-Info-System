using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class note
    {
        private int _notid;

        public int Noteid
        {
            get { return _notid; }
            set { _notid = value; }
        }
        private int _userid;

        public int Userid
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private string _topics;

        public string Topics
        {
            get { return _topics; }
            set { _topics = value; }
        }
        private DateTime _dat;

        public DateTime Date
        {
            get { return _dat; }
            set { _dat = value; }
        }
        private string _stats;

        public string Status
        {
            get { return _stats; }
            set { _stats = value; }
        }
        private string _intro;

        public string Introduction
        {
            get { return _intro; }
            set { _intro = value; }
        }
        private string _subj;

        public string Subject
        {
            get { return _subj; }
            set { _subj = value; }
        }
        public note()
        {

        }
        public note(int noteid,int userid,string topic,DateTime date,string status,string introduction,string subject)
        {
            this._notid = noteid;
            this._userid = userid;
            this._topics = topic;
            this._dat = date;
            this._stats = status;
            this._intro = introduction;
            this._subj = subject;
        }
    }
}
