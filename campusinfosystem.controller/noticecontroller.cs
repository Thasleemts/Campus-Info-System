using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public  class noticecontroller
    {
        noticeTableAdapter ntc = new noticeTableAdapter();
        public void add(notice entity)
        {
            ntc.Insert(entity.From, entity.Notice, entity.Date);
        }
        public void delete(int id)
        {
            ntc.Delete(id);
        }
        public IEnumerable<notice> GetAll()
        {
        List<notice> li = new List<notice>();
        foreach (var item in ntc.GetData())
        {
            li.Add(new notice(item.noticeid, item.frm, item.notice, item.date));
        }
        return li;
	}
    }
}
