using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class joincommunity
    {
        private int _joinid;

        public int Joinid
        {
            get { return _joinid; }
            set { _joinid = value; }
        }
        private int _cmntyid;

        public int Communityid
        {
            get { return _cmntyid; }
            set { _cmntyid = value; }
        }
        private int _userid;

        public int Userid
        {
            get { return _userid; }
            set { _userid = value; }
        }
        private DateTime _joingdat;

        public DateTime Joiningdate
        {
            get { return _joingdat; }
            set { _joingdat = value; }
        }
        public joincommunity()
        {

        }
        public joincommunity(int joinid,int communityid,int userid,DateTime joiningdate)
        {
            this._joinid = joinid;
            this._cmntyid = communityid;
            this._userid = userid;
            this._joingdat = joiningdate;
        }
    }
}
