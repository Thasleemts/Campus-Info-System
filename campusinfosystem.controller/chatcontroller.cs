using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
      
   public class chatcontroller
    {
       ChatTableAdapter ctd = new ChatTableAdapter();
       public void add(chat entity)
       {
           ctd.Insert(entity.Sender, entity.Reciever, entity.Message, entity.Date);
       }

       public void delete(int id)
       {
           ctd.Delete(id);
       }
       public IEnumerable<chat> GetAll()
       {
           List<chat> li = new List<chat>();
           foreach (var item in ctd.GetData())
           {
               li.Add(new chat(item.chatid, item.sender, item.reciever, item.message, item.date));
           }
           return li;
       }
    }
}
