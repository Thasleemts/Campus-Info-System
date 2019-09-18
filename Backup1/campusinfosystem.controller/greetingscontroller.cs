using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class greetingscontroller
    {
        greetingsTableAdapter grt = new greetingsTableAdapter();
        public void add(greetings entity)
        {
            grt.Insert(entity.Name);
        }
        public void delete(int id)
        {
            grt.Delete(id);
        }
        public IEnumerable<greetings> GetAll()
        {
            List<greetings> li = new List<greetings>();
            foreach (var item in grt.GetData())
            {
                li.Add(new greetings(item.id, item.name));
            }
            return li;
        }
    }
}
