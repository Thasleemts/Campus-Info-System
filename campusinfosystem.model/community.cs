using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class community
    {
        private int _commntyid;

        public int Communityid
        {
            get { return _commntyid; }
            set { _commntyid = value; }
        }
        private int _ownerid;

        public int Ownerid
        {
            get { return _ownerid; }
            set { _ownerid = value; }
        }
        private DateTime _date;

        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        private string _nam;

        public string Name
        {
            get { return _nam; }
            set { _nam = value; }
        }
        private string _catgry;

        public string Category
        {
            get { return _catgry; }
            set { _catgry = value; }
        }
        public community()
        {

        }
        public community(int comunityid,int ownerid,DateTime date,string name,string category)
        {
            this._ownerid = ownerid;
            this._commntyid = comunityid;
            this._date = date;
            this._nam = name;
            this._catgry = category;
        }
    }
}
