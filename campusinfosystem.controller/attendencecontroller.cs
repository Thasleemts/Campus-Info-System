using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
  public   class attendencecontroller
    {
        AttendenceTableAdapter atn = new AttendenceTableAdapter();
        public void add(attendence entity)
        {
            atn.Insert(entity.Studentid, entity.Batchid, entity.Branchid, entity.Totaldays
                , entity.Attendence, entity.Percentage);

        }
        public void delete(int id)
        {
            atn.Delete(id);
        }
        public IEnumerable<attendence>GetAll()
        {
            List<attendence>li=new List<attendence>();
            foreach (var item in atn.GetData())
	{
		 li.Add(new attendence(item.id,item.studentid,item.batchid,item.branchid
             ,item.totaldays,item.attendence,item.percentage));

	}
            return li;

        }
    }
}
