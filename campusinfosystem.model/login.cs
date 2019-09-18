using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class login
    {
        private int _loginid;

        public int Loginid
        {
            get { return _loginid; }
            set { _loginid = value; }
        }
        private string _usernam;

        public string Username
        {
            get { return _usernam; }
            set { _usernam = value; }
        }
        private string _pswd;

        public string Password
        {
            get { return _pswd; }
            set { _pswd = value; }
        }
        private string _rol;

        public string Role
        {
            get { return _rol; }
            set { _rol = value; }
        }
        private string _status;

        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }
        private string _onlnstts;

        public string Onlinestatus
        {
            get { return _onlnstts; }
            set { _onlnstts = value; }
        }
        public login()
        {

        }
        public login(int loginid,string username,string password,string role,string status,string onlinestatus)
        {
            this._loginid = loginid;
            this._usernam = username;
            this._pswd = password;
            this._rol = role;
            this._status = status;
            this._onlnstts = onlinestatus;
        }
    }
}
