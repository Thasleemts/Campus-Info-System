using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public  class feedbackcontroller
    {
        feedbackTableAdapter fed =new feedbackTableAdapter();
        public void add(feedback entity)
        {
            fed.Insert(entity.Sender, entity.Description, entity.Postdate);
        }
        public void delete(int id)
        {
            fed.Delete(id);
        }
        public IEnumerable<feedback> GetAll()
        {
            List<feedback> li = new List<feedback>();
            foreach (var item in fed.GetData())
            {
                li.Add(new feedback(item.feedbackid, item.sender, item.Description, item.Posteddate));
            }
            return li;
        }
    }
}
