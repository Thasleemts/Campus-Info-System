using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
   public class batch
    {
        private int _btchid;

        public int Batchid
        {
            get { return _btchid; }
            set { _btchid = value; }
        }
        private string _btch;

        public string Batch
        {
            get { return _btch; }
            set { _btch = value; }
        }
        public batch()
        {

        }
        public batch(int batchid,string batch)
        {
            this._btchid = batchid;
            this._btch = batch;

        }
    }
}
