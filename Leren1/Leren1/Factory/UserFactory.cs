using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.Factory
{
    public class UserFactory
    {
        public static User Create(String Id, String Name, String Email, int Phone_number, DateTime DOB ,String Password, String Role)
        {
            User user = new User()
            {
                Id = Id,
                Name = Name,
                Email = Email,
                Phone_number = Phone_number,
                DOB = DOB,
                Password = Password,
                Role = Role,
            };
            return user;
        }

    }
}