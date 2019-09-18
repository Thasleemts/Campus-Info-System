using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class studentregistration
    {
        private int _stdndid;

        public int Studentid
        {
            get { return _stdndid; }
            set { _stdndid = value; }
        }
        private string _fisnam;

        public string Firstname
        {
            get { return _fisnam; }
            set { _fisnam = value; }
        }
        private string _lstnam;

        public string Lastname
        {
            get { return _lstnam; }
            set { _lstnam = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private string _mob;

        public string Mobile
        {
            get { return _mob; }
            set { _mob = value; }
        }
        private DateTime _dob;

        public DateTime Dob
        {
            get { return _dob; }
            set { _dob = value; }
        }
        private string _gendr;

        public string Gender
        {
            get { return _gendr; }
            set { _gendr = value; }
        }
        private string _addrs;

        public string Address
        {
            get { return _addrs; }
            set { _addrs = value; }
        }
        private string _plc;

        public string Place
        {
            get { return _plc; }
            set { _plc = value; }
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
        private string _course;

        public string Course
        {
            get { return _course; }
            set { _course = value; }
        }
        private int _batchid;

        public int Batchid
        {
            get { return _batchid; }
            set { _batchid = value; }
        }

        private string _usernam;

        public string Username
        {
            get { return _usernam; }
            set { _usernam = value; }
        }
        private string _status;

        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }
        public studentregistration()
        {

        }
        public studentregistration(int studentid,string firstname,string lastname,string email,string mobile
            , DateTime dob,string gender,string address,string place,string city,string state,string country,int pin
            , string course, int batchid, string username, string status)
        {
            this._stdndid =studentid;
            this._fisnam = firstname;
            this._lstnam = lastname;
            this._email = email;
            this._mob = mobile;
            this._dob = dob;
            this._gendr = gender;
            this._addrs = address;
            this._plc = place;
            this._city = city;
            this._state = state;
            this._country = country;
            this._pin = pin;
            this._course = course;
            this._batchid = batchid;
            this._usernam = username;
            this._status = status;


        }

    }
}
