using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class newscontroller
    {
        newsTableAdapter nws = new newsTableAdapter();
        public void add(news entity)
        {
            nws.Insert(entity.Name, entity.Venu, entity.Date, entity.Description);
        }
        public void delete(int id)
        {
            nws.Delete(id);
        }
        public IEnumerable<news>GetAll()
    {
        List<news> li = new List<news>();
            foreach (var item in nws.GetData())
	{
		 li.Add(new news(item.newsid,item.name,item.venu,item.date,item.description));

	}
            return li;
        }
    }
}
