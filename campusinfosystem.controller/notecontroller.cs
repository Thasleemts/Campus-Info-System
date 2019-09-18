using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
 public   class notecontroller
    {
        noteTableAdapter not=new noteTableAdapter();
        public void add(note entity)
        {
            not.Insert(entity.Userid, entity.Topics
                , entity.Date, entity.Status, entity.Introduction, entity.Subject);
        }
        public void delete(int id)
        {
            not.Delete(id);
        }
        public IEnumerable<note> GetAll()
        {
            List<note> li = new List<note>();
            foreach (var item in not.GetData())
            {
                li.Add(new note(item.noteid, item.userid, item.topic, item.date, item.status, item.introduction, item.subject));

            }
            return li;
        }
        public void UpdateStatus(string status,int id)
        {
            not.UpdateStatus(status, id);
        }
    }
}
