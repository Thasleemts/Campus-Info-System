using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class branchcontroller
    {
        BranchTableAdapter brc = new BranchTableAdapter();
        public void add(branch entity)
        {
            brc.Insert(entity.Branch);
        }
        public void delete(int id)
        {
            brc.Delete(id);
        }
        public IEnumerable<branch> GetAll()
        {
            List<branch> li = new List<branch>();
            foreach (var item in brc.GetData())
            {
                li.Add(new branch(item.branchid, item.branch));

            }

            return li;

        }
        public void Update(int branchId, string name)
        {
            brc.UpdateDetails(name, branchId);
        }
    }
}
