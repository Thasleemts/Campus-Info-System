using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class communitycontroller
    {
        communityTableAdapter cmn = new communityTableAdapter();
        public void add(community entity)
        {
            cmn.Insert(entity.Ownerid, entity.Date, entity.Name, entity.Category);
        }
        public void delete(int id)
        {
            cmn.Delete(id);
        }
        public IEnumerable<community> GetAll()
        {
            List<community> li = new List<community>();
            foreach (var item in cmn.GetData())
            {
                li.Add(new community(item.communityid, item.ownerid, item.date, item.name, item.category));
            }

            return li;
        }
    
    }
}
