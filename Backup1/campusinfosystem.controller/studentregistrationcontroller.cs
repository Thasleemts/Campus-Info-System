using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
    public class studentregistrationcontroller
    {
        studentregisterTableAdapter std = new studentregisterTableAdapter();
        public void add(studentregistration entity)
        {
            std.Insert(entity.Firstname, entity.Lastname, entity.Email, entity.Mobile
                , entity.Dob, entity.Gender, entity.Address, entity.Place, entity.City
                , entity.State, entity.Country, entity.Pin, entity.Course, entity.Batchid
                , entity.Username, entity.Status);
        }
        public void delete(int id)
        {
            std.Delete(id);
        }
        public IEnumerable<studentregistration> GetAll()
        {
            List<studentregistration> li = new List<studentregistration>();
            foreach (var item in std.GetData())
            {
                li.Add(new studentregistration(item.studentid, item.firstname, item.lastname, item.email
                    , item.mobile, item.dob, item.gender, item.address, item.place, item.city, item.state
                    , item.country, item.pin, item.country, item.batchid, item.username, item.status));
            }
            return li;
        }
        public void Updatestatus(string status, int studentid)
        {
            std.Updatestatus(status, studentid);

        }
        public string GetUsername(int studentId)
        {
            return (from c in std.GetData() where c.studentid == studentId select c.username).SingleOrDefault();
        }
        public IEnumerable<studentregistration> Studentdetails(int studentid)
        {
            List<studentregistration> li = new List<studentregistration>();
            var data = (from c in std.GetData() where c.studentid == studentid select c).SingleOrDefault();
            foreach (var item in std.GetData())
            {
                li.Add(new studentregistration(item.studentid, item.firstname, item.lastname, item.email
                    , item.mobile, item.dob, item.gender, item.address, item.place, item.city, item.state
                    , item.country, item.pin, item.country, item.batchid, item.username, item.status));
            }
            return li;
        }
        public IEnumerable<studentregistration> Getdat(string username)
        {
            var data = (from c in std.GetData() where c.username == username select c);
            List<studentregistration> lis = new List<studentregistration>();
            foreach (var item in data)
            {
                lis.Add(new studentregistration(item.studentid, item.firstname, item.lastname, item.email
                    , item.mobile, item.dob, item.gender, item.address, item.place, item.city, item.state
                    , item.country, item.pin, item.country, item.batchid, item.username, item.status));
            }
            return lis;
        }
        public void ProfileChange(studentregistration entity)
        {
            std.ProfileChange(entity.Firstname, entity.Lastname, entity.Email, entity.Mobile, entity.Dob.ToShortDateString(), entity.Gender
                , entity.Address, entity.Place, entity.City, entity.State, entity.Country, entity.Pin, entity.Course, entity.Batchid, entity.Studentid);

        }
    }
}
