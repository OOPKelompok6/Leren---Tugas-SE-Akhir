using Leren1.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.utilScripts
{
    public class JSONtoObjectsUtils
    {
        public static User JSONtoUser()
        {
            HttpCookie curCookie = HttpContext.Current.Request.Cookies["user-cookie"];
            if(curCookie != null)
            {
                string userJSON = curCookie.Value;
                String format = "dd/MM/yyyy HH:mm:ss";
                var dateTimeConverter = new IsoDateTimeConverter { DateTimeFormat = format };
                User user = JsonConvert.DeserializeObject<User>(userJSON, dateTimeConverter);
                return user;
            }
            return null;
        }
    }
}