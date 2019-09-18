using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class greetings
    {
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _nam;

        public string Name
        {
            get { return _nam; }
            set { _nam = value; }
        }
        public greetings()
        {

        }
        public greetings(int id,string name)
        {
            this._id = id;
            this._nam = name;

        }
    }
}
