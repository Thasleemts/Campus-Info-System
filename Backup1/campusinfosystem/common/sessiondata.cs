using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace campusinfosystem.common
{
    public class sessiondata
    {
        
        public static string username
        {
            get { return (string)HttpContext.Current.Session["username"]; }
            set { HttpContext.Current.Session["username"] = value; }
        }
        
    }
}