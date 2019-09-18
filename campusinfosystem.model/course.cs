using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class course
    {
        private int _corseid;

        public int Courseid
        {
            get { return _corseid; }
            set { _corseid = value; }
        }
        private string _nam;

        public string Name
        {
            get { return _nam; }
            set { _nam = value; }
        }
        private string _durtion;

        public string Duration
        {
            get { return _durtion; }
            set { _durtion = value; }
        }
        private int _fees;

        public int Fees
        {
            get { return _fees; }
            set { _fees = value; }
        }
        private string _eligblty;

        public string Eligibility
        {
            get { return _eligblty; }
            set { _eligblty = value; }
        }
        private int _totlst;

        public int Totalseat
        {
            get { return _totlst; }
            set { _totlst = value; }
        }
        public course()
        {

        }
        public course(int courseid,string name,string duration,int fees,string eligibility,int totalseats)
        {
            this._corseid = courseid;
            this._nam = name;
            this._durtion = duration;
            this._eligblty = eligibility;
            this._fees = fees;
            this._totlst = totalseats;
        }
    }
}
