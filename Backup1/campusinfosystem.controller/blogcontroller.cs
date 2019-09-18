using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public  class blogcontroller
    {
        BlogTableAdapter blg = new BlogTableAdapter();
        public void add(blog entity)
        {
            blg.Insert(entity.Blogname,entity.Createdby,entity.Date,entity.Description);
        }
        public void delete(int id)
        {
            blg.Delete(id);
        }
        public IEnumerable<blog>GetAll()
        {
            List<blog> li=new List<blog>();
            foreach (var item in blg.GetData())
	{
		 li.Add(new blog(item.blogid,item.blogname,item.createdby,item.date,item.description));
	}
            return li;
    }
    }
}
