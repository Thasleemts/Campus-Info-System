using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public  class notificationcontroller
    {
        notificationTableAdapter ntf = new notificationTableAdapter();
        public void add(notification entity)
        {
            ntf.Insert(entity.Batchid, entity.Batchid, entity.Description, entity.Subject);
        }
        public void delete(int id)
        {
            ntf.Delete(id);
        }
        public IEnumerable<notification> GetAll()
        {
            List<notification> li = new List<notification>();
            foreach (var item in ntf.GetData())
            {
                li.Add(new notification(item.notificationid, item.branchid, item.batchid, item.description, item.description));

            } return li;
        }
    }
}
