using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.Repository
{
    public class UserRepository
    {
        static DatabaseEntities1 db  = new DatabaseEntities1();

        public static User login(string email, string password)
        {
            User user = (from i in  db.Users where i.Email.Equals(email) && i.Password.Equals(password) select i).FirstOrDefault();
            return user;
        }
    }
}