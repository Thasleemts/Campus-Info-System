using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
 public   class staffregistrationcontroller
    {
        staffregistrationTableAdapter stf = new staffregistrationTableAdapter();
        loginTableAdapter lgn = new loginTableAdapter();
        public void add(staffregistration entity)
        {
            stf.Insert(entity.Firstname, entity.Lastname, entity.Email, entity.Mobile
                , entity.Gender, entity.Address, entity.Place, entity.City, entity.State
                , entity.Country, entity.Pin, entity.Experirience, entity.Dob
                , entity.Department, entity.Username, entity.Status);
        }
        public void delete(int id)
        {
            stf.Delete(id);
        }
        public IEnumerable<staffregistration> GetAll()
        {
            List<staffregistration> li = new List<staffregistration>();
            foreach (var item in stf.GetData())
            {
                li.Add(new staffregistration(item.staffid, item.firstname, item.lastname
                    , item.email, item.mobile, item.gender, item.address, item.place
                    , item.city, item.state, item.country, item.pin, item.experience
                    , item.dob, item.department, item.username, item.status));
            }
            return li;
        }
        public void Updatestatus(string status, int staffid)
        {
            stf.Updatestatus(status, staffid);
        }
        public string GetUsername(int staffId)
        {
            return (from c in stf.GetData() where c.staffid == staffId select c.username).SingleOrDefault();
        }

        public bool IsValidUser(string username)
        {
            var user = (from c in lgn.GetData() where c.username == username select c).SingleOrDefault();
            if (user != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public IEnumerable<staffregistration> Getdat(string username)
        {
            var data = (from c in stf.GetData() where c.username == username select c);
            List<staffregistration> l = new List<staffregistration>();
            foreach (var item in data)
            {
                l.Add(new staffregistration(item.staffid,item.firstname,item.lastname,item.email,item.mobile,item.gender,item.address,item.place,item.city
                    ,item.state,item.country,item.pin,item.experience,item.dob,item.department,item.username,item.status));
            }
            return l;
        }

        public string GetRole(string username)
        {
            return (from c in lgn.GetData() where c.username == username select c.role).SingleOrDefault();
        }
        public void UpdateProfile(staffregistration entity)
        {
            stf.UpdateProfile(entity.Firstname, entity.Lastname, entity.Email, entity.Mobile, entity.Gender, entity.Address, entity.Place
                , entity.City, entity.State, entity.Country, entity.Pin, entity.Experirience, entity.Dob.ToString(), entity.Department, entity.Staffid);

        }
     
     }
}
