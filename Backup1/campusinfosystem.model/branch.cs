using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class branch
    {
        private int _brchid;

        public int Branchid
        {
            get { return _brchid; }
            set { _brchid = value; }
        }
        private string _brnch;

        public string Branch
        {
            get { return _brnch; }
            set { _brnch = value; }
        }
        public branch()
        {

        }
        public branch(int branchid,string branch)
        {
            this._brchid = branchid;
            this._brnch = branch;

        }
    }
}
