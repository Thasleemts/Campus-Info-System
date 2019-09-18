using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public  class mailcontroller
    {
        mailTableAdapter mil = new mailTableAdapter();
        public void add(mail entity)
        {
            mil.Insert(entity.Sender, entity.Reciever, entity.Subject, entity.Message, entity.Date);
        }
        public void delete(int id)
        {
            mil.Delete(id);
        }
        public IEnumerable<mail>GetAll()
        {
            List<mail>li=new List<mail>();
            foreach (var item in mil.GetData())
	{
        li.Add(new mail(item.mailid, item.sender
            , item.reciever, item.subject, item.message, item.date));
	}
            return li;
        }
    }
}
