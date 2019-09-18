using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using campusinfosystem.model.DataSet1TableAdapters;
using campusinfosystem.model;

namespace campusinfosystem.controller
{
   public class batchcontroller
    {
        BatchTableAdapter btc = new BatchTableAdapter();
        public void add(batch entity)
        {
            btc.Insert(entity.Batch);
            
        }
        public void delete(int id)
        {
            btc.Delete(id);
        }
        public IEnumerable<batch>GetAll()
    
    {
        List<batch>li= new List<batch>();

        foreach (var item in btc.GetData())
        {
            li.Add(new batch(item.batchid, item.batch));
        }
            return li;
    }
        public void BatchStatus(string batch, int batchid)
        {
            btc.BatchStatus(batch, batchid);

        }
    } 
	}

