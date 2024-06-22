using Leren1.Models;
using Leren1.Repository;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leren1.Pages
{
    public partial class SignInPage : System.Web.UI.Page
    {
        private DatabaseEntities1 db = DatabaseSingleton.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignBtn_Click(object sender, EventArgs e)
        {
            String Email = EmailTxt.Text;
            String Password = PasswordTxt.Text;
            bool Check = RememberCb.Checked;

            var user = (from x in db.Users where x.Email.Equals(Email) && x.Password.Equals(Password) select x).FirstOrDefault();

            if (user != null)
            {
                Dictionary<String, String> userDict  = new Dictionary<String, String>() 
                {
                    {"Id",  user.Id},
                    {"Name",  user.Name},
                    {"Password", user.Password},
                    {"Email", user.Email},
                    {"DOB", Convert.ToString(user.DOB)},
                    {"Phone_Number", Convert.ToString(user.Phone_number)},
                    {"Role", user.Role}
                };
                String userJSON = JsonConvert.SerializeObject(userDict);
                HttpCookie userCookie = new HttpCookie("user-cookie", userJSON);

                if (Check)
                {
                    userCookie.Expires = DateTime.Now.AddDays(7);
                }
                Response.Cookies.Add(userCookie);
                Response.Redirect("HomepageStudent.aspx");
            }
        }

        protected void AccountLb_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }
    }
}