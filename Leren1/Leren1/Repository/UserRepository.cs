using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.Repository
{
    public class UserRepository
    {
        static DatabaseEntities1 db  = DatabaseSingleton.GetInstance();

        public static User login(string email, string password)
        {
            User user = (from i in  db.Users where i.Email.Equals(email) && i.Password.Equals(password) select i).FirstOrDefault();
            return user;
        }

        public static void addUser(User user)
        {
            db.Users.Add(user);
            db.SaveChanges();
        }

        public static User selectUserbyEmail(string email)
        {
            return (from d in db.Users where d.Email == email select d).ToList().FirstOrDefault();
        }

        public static User selectUserbyPhoneNumber(int phoneNumber)
        {
            return (from d in db.Users where d.Phone_number == phoneNumber select d).ToList().FirstOrDefault();
        }

        public static User selectUserbyName(string name)
        {
            return (from d in db.Users where d.Name == name select d).ToList().FirstOrDefault();
        }
    }
}