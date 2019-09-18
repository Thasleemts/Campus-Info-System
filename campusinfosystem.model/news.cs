using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class news
    {
        private int _newsid;

        public int Newsid
        {
            get { return _newsid; }
            set { _newsid = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _venu;

        public string Venu
        {
            get { return _venu; }
            set { _venu = value; }
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
        public news()
        {

        }
        public news(int newsid,string name,string venu,DateTime date,string description)
        {
            this._newsid = newsid;
            this._name = name;
            this._venu = venu;
            this._date = date;
            this._desc = description;
        }
    }
}
