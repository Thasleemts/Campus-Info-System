using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class gallery
    {
        private int _gallryid;

        public int Galleryid
        {
            get { return _gallryid; }
            set { _gallryid = value; }
        }
        private string _nam;

        public string Name
        {
            get { return _nam; }
            set { _nam = value; }
        }
        private string _typ;

        public string Type
        {
            get { return _typ; }
            set { _typ = value; }
        }
        public gallery()
        {

        }
        public gallery(int galleryid,string galleryname,string type)
        {
            this._gallryid = galleryid;
            this._nam = galleryname;
            this._typ = type;
        }
    }

}
