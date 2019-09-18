using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class notification
    {
        private int _notifiid;

        public int Notificationid
        {
            get { return _notifiid; }
            set { _notifiid = value; }
        }
        private int _brnchid;

        public int Branchid
        {
            get { return _brnchid; }
            set { _brnchid = value; }
        }
        private int _batchid;

        public int Batchid
        {
            get { return _batchid; }
            set { _batchid = value; }
        }
        private string _desc;

        public string Description
        {
            get { return _desc; }
            set { _desc = value; }
        }
        private string _subj;

        public string Subject
        {
            get { return _subj; }
            set { _subj = value; }
        }
        public notification()
        {

        }
        public notification(int notificationid,int branchid,int batchid,string description,string subject)
        {
            this._notifiid = notificationid;
            this._brnchid = branchid;
            this._batchid = batchid;
            this._desc = description;
            this._subj = subject;
        }
    }
}
