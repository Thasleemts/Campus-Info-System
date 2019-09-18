using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class aluminregistration
    {

        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _name;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _yearofpassout;

        public string Yearofpassout
        {
            get { return _yearofpassout; }
            set { _yearofpassout = value; }
        }
        private string _course;

        public string Course
        {
            get { return _course; }
            set { _course = value; }
        }
        private int _batchid;

        public int Batch
        {
            get { return _batchid; }
            set { _batchid = value; }
        }
        private string _address;

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }
        private string _place;

        public string Place
        {
            get { return _place; }
            set { _place = value; }
        }
        private string _city;

        public string City
        {
            get { return _city; }
            set { _city = value; }
        }
        private string _state;

        public string State
        {
            get { return _state; }
            set { _state = value; }
        }
        private string _country;

        public string Country
        {
            get { return _country; }
            set { _country = value; }
        }
        private int _pin;

        public int Pin
        {
            get { return _pin; }
            set { _pin = value; }
        }
        private string _phone;

        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        private string _mob;

        public string Mob
        {
            get { return _mob; }
            set { _mob = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private string _gender;

        public string Gender
        {
            get { return _gender; }
            set { _gender = value; }
        }
        private DateTime _dob;

        public DateTime Dob
        {
            get { return _dob; }
            set { _dob = value; }
        }
        private string _username;

        public string Username
        {
            get { return _username; }
            set { _username = value; }
        }
        private string fgh;

        public string Fgh
        {
            get { return fgh; }
            set { fgh = value; }
        }


        public aluminregistration()
        {

        }
        public aluminregistration(int id, string name, string yearofpassout, string course, int batchid
            , string address, string place, string city, string state, string country, int pin, string phone
            , string mob, string email, string gender, DateTime dob, string username)
        {
            this._id = id;
            this._name = name;
            this._yearofpassout = yearofpassout;
            this._course = course;
            this._batchid = batchid;
            this._address = address;
            this._place = place;
            this._city = city;
            this._state = state;
            this._country = country;
            this._pin = pin;
            this._phone = phone;
            this._mob = mob;
            this._email = email;
            this._gender = gender;
            this._dob = dob;
            this._username = username;
        }

    }
}