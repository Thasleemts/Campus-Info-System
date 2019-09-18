using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class joiningcommunitycontroller
    {
        joincommunityTableAdapter jgcm = new joincommunityTableAdapter();
        public void add(joincommunity entity)
        {
            jgcm.Insert(entity.Communityid, entity.Userid, entity.Joiningdate);
        }
        public void delete(int id)
        {
            jgcm.Delete(id);
        }
        public IEnumerable<joincommunity> GetAll()
        {
            List<joincommunity> li = new List<joincommunity>();
            foreach (var item in jgcm.GetData())
            {
                li.Add(new joincommunity(item.joinid, item.communityid, item.userid, item.joiningdate));
            }
            return li;
        }

    }
}
