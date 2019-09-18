using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
 public   class gallerycontroller
    {
        galleryTableAdapter glr = new galleryTableAdapter();
        public void add(gallery entity)
        {
            glr.Insert(entity.Name, entity.Type);
        }
        public void delete(int id)
        {
            glr.Delete(id);
        }
        public IEnumerable<gallery> GetAll()
        {
            List<gallery> li = new List<gallery>();
            foreach (var item in glr.GetData())
            {
                li.Add(new gallery(item.galleryid, item.name, item.type));

            }
            return li;
        }
    
    }
}
