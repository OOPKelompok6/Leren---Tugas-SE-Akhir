using Leren1.Factory;
using Leren1.Masters;
using Leren1.Models;
using Leren1.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Leren1.Pages
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if(UserRepository.selectUserbyEmail(txtEmail.Text) != null)
            {
                return;
            }

            int phoneNum = Convert.ToInt32(PhoneTxt.Text);
            if (UserRepository.selectUserbyPhoneNumber(phoneNum) != null)
            {
                return;
            }

            if(UserRepository.selectUserbyName(Nametxt.Text) != null)
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
            User user = UserFactory.Create(GenerateID(), Nametxt.Text, txtEmail.Text, Convert.ToInt32(PhoneTxt.Text), DateTime.Parse(DOBTxt.Text), PasswordTxt.Text, RadioButtonList1.SelectedValue);
            UserRepository.addUser(user);

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