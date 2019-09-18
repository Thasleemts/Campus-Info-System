using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class recievedgreetingcontroller
    {
        recievedgreetingsTableAdapter rvd = new recievedgreetingsTableAdapter();
        public void add(recievedgreetings entity)
        {
            rvd.Insert(entity.Sender, entity.Reciever, entity.Message, entity.Date);
        }
        public void delete(int id)
        {
            rvd.Delete(id);
        }
        public IEnumerable<recievedgreetings> GetAll()
        {
            List<recievedgreetings> li = new List<recievedgreetings>();
            foreach (var item in rvd.GetData())
            {
                li.Add(new recievedgreetings(item.recievedid, item.sender, item.reciever, item.message, item.date));


            }
            return li;
        }
    
    }
}
