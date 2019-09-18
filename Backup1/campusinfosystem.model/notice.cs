using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class notice
    {
        private int _noticid;

        public int Noticeid
        {
            get { return _noticid; }
            set { _noticid = value; }
        }
        private string _frm;

        public string From
        {
            get { return _frm; }
            set { _frm = value; }
        }
        private string _notice;

        public string Notice
        {
            get { return _notice; }
            set { _notice = value; }
        }
        private DateTime _dat;

        public DateTime Date
        {
            get { return _dat; }
            set { _dat = value; }
        }
        public notice()
        {

        }
        public notice(int noticeid,string from,string notice,DateTime date)
        {
            this._noticid = noticeid;
            this._frm = from;
            this._notice = notice;
            this._dat = date;
        }
    }
}
