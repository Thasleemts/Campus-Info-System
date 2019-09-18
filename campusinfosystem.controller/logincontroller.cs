using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class logincontroller
    {
        loginTableAdapter lgn = new loginTableAdapter();
        public void add(login entity)
        {
            lgn.Insert(entity.Username, entity.Password, entity.Role, entity.Status, entity.Onlinestatus);
        }
        public void delete(int id)
        {
            lgn.Delete(id);
        }
        public IEnumerable<login> GetAll()
        {
            List<login> li = new List<login>();
            foreach (var item in lgn.GetData())
            {
                li.Add(new login(item.loginid, item.username, item.password
                    , item.role, item.status, item.onlinestatus));

            }
            return li;
        }
        public void Updatestatus(string status, int loginid)
        {
            lgn.Updatestatus(status, loginid);

        }

        public bool IsValidUser(string username, string password)
        {
            var user = (from c in lgn.GetData() where c.username == username && c.password == password && c.status=="Accept" select c).SingleOrDefault();
            if (user != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public string GetRole(string username)
        {
            return (from c in lgn.GetData() where c.username == username select c.role).SingleOrDefault();
        }

        public bool Valid(string username)
        {
            var result = (from c in lgn.GetData() where c.username == username select c).Count();
            if (result == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public void UpdatePassword(string username, string password)
        {
            lgn.UpdatePassword(password,username);
        }
        public void OnlineStatus(string status,string username)
        {
            lgn.UpdateOnlineStatus(status, username);
        }
        public IEnumerable<login> Onlineusers(string username)
        {
            List<login> li = new List<login>();
            var data=from c in lgn.GetData() where c.onlinestatus=="Online" && c.username!=username select c;
            foreach (var item in data)
            {
                li.Add(new login(item.loginid, item.username, item.password
                    , item.role, item.status, item.onlinestatus));

            }
            return li;
        }
     }
}
