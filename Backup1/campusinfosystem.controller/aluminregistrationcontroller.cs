using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;



namespace campusinfosystem.controller
{
    public class aluminregistrationcontroller
    {
        aluminregistrationTableAdapter alu = new aluminregistrationTableAdapter();
        public void add(aluminregistration entity)
        {
            alu.Insert(entity.Name, entity.Yearofpassout, entity.Course, entity.Batch, entity.Address, entity.Place
                , entity.City, entity.State, entity.Country, entity.Pin, entity.Phone, entity.Mob, entity.Email
                , entity.Gender, entity.Dob, entity.Username);
        }
        public void delete(int id)
        {
            alu.Delete(id);
        }
        public IEnumerable<aluminregistration>GetAll()
        {
            List<aluminregistration> li= new List<aluminregistration>();
            foreach (var item in alu.GetData())
            {
             li.Add(new aluminregistration(item.id,item.name,item.Yearofpassout,item.Course
                 ,item.Batchid,item.Address,item.Place,item.City,item.state,item.country
                 ,item.pin,item.phone,item.mob,item.email,item.gender,item.DOB,item.username));   
            }
            return li;
                


             
        }
    }
}
