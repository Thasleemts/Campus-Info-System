using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class questioncontroller
    {
        questionTableAdapter que = new questionTableAdapter();
        public void add(question entity)
        {
            que.Insert(entity.Subject, entity.Question, entity.Answer, entity.Status);
        }
        public void delete(int id)
        {
            que.Delete(id);
        }
        public IEnumerable<question> GetAll()
        {
            List<question> li = new List<question>();
            foreach (var item in que.GetData())
            {
                li.Add(new question(item.id, item.subject, item.question, item.answer, item.status));

            }
            return li;
        }
    }
}
