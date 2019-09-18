using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class coursecontroller
    {
        courseTableAdapter crs = new courseTableAdapter();
        public void add(course entity)
        {
            crs.Insert(entity.Name, entity.Duration , entity.Fees, entity.Eligibility, entity.Totalseat);
        }
        public void delete(int id)
        {
            crs.Delete(id);
        }
        public IEnumerable<course> GetAll()
        {
            List<course> li = new List<course>();
            foreach (var item in crs.GetData())
            {
                li.Add(new course(item.courseid, item.name, item.duration , item.fees, item.eligibility, item.totalseats));
            }
            return li;

        }
    }
}
