using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
   public class blog
    {
        private int _blgid;

        public int Blogid
        {
            get { return _blgid; }
            set { _blgid = value; }
        }
        private string _blg;

        public string Blogname
        {
            get { return _blg; }
            set { _blg = value; }
        }
        private string _crtdby;

        public string Createdby
        {
            get { return _crtdby; }
            set { _crtdby = value; }
        }
        private DateTime _date;

        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        private string _desc;

        public string Description
        {
            get { return _desc; }
            set { _desc = value; }
        }
        public blog()
        {

        }
        public blog(int blogid,string blogname,string createdby,DateTime date,string description)
        {
            this._blgid = blogid;
            this._blg = blogname;
            this._crtdby = createdby;
            this._date = date;
            this._desc = description;
        }
    }
}
