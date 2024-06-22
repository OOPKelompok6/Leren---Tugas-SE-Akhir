using Leren1.Models;
using Leren1.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leren1.Pages
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseEntities1 db = DatabaseSingleton.GetInstance();

            if((from d in db.Users where d.Email == txtEmail.Text select d).ToList().FirstOrDefault() != null)
            {
                return;
            }

            int phoneNum = Convert.ToInt32(PhoneTxt.Text);
            if ((from d in db.Users where d.Phone_number == phoneNum select d).ToList().FirstOrDefault() != null)
            {
                return;
            }

            if((from d in db.Users where d.Name == Nametxt.Text select d).ToList().FirstOrDefault() != null)
            {
                return;
            }

            if(!CheckBox.Checked)
            {
                return;
            }

            if(RadioButtonList1.SelectedValue == "")
            {
                return;
            }

            User user = new User() 
            { 
                Name = Nametxt.Text,
                Email= txtEmail.Text,
                Phone_number= Convert.ToInt32(PhoneTxt.Text),
                Password = PasswordTxt.Text,
                DOB = DateTime.Parse(DOBTxt.Text),
                Role = RadioButtonList1.SelectedValue,
                Id = GenerateID()
            };

            db.Users.Add(user);
            db.SaveChanges();
            Response.Redirect("SignInPage.aspx");
        }

        protected void HaveaccountLb_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");
        }

        private String GenerateID()
        {
            Random rnd = new Random();
            int X = rnd.Next(1, 1000);
            String ArticleID = String.Format("LER{0:000}", X);
            return ArticleID;
        }
    }
}