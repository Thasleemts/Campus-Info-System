using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
   public class attendence
    {
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private int _stdnid;

        public int Studentid
        {
            get { return _stdnid; }
            set { _stdnid = value; }
        }
        private int _btchid;

        public int Batchid
        {
            get { return _btchid; }
            set { _btchid = value; }
        }
        private int _brnchid;

        public int Branchid
        {
            get { return _brnchid; }
            set { _brnchid = value; }
        }
        private int _totldys;

        public int Totaldays
        {
            get { return _totldys; }
            set { _totldys = value; }
        }
        private int _attndenc;

        public int Attendence
        {
            get { return _attndenc; }
            set { _attndenc = value; }
        }
        private string _percntg;

        public string Percentage
        {
            get { return _percntg; }
            set { _percntg = value; }
        }

        public attendence()
        {

        }
        public attendence(int id,int studentid,int batchid,int branchid,int totaldays
            ,int attendence,string percentage)

        {
            this._id = id;
            this._stdnid = studentid;
            this._btchid = batchid;
            this._brnchid = branchid;
            this._totldys = totaldays;
            this._attndenc = attendence;
            this._percntg = percentage;

        }
    }
}
