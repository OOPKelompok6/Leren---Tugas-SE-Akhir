using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.Repository
{
    public class DatabaseSingleton
    {
        private static DatabaseEntities1 db = null;
        public static DatabaseEntities1 GetInstance()
        {
            if(db == null)
            {
                db = new DatabaseEntities1();
            }
            return db; 
        }
    }
}