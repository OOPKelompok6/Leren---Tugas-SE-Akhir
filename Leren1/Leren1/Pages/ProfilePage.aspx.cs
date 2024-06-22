using Leren1.Masters;
using Leren1.Models;
using Leren1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace Leren1.Pages
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (((LoggedIn)this.Master).curUser == null)
            {
                Response.Redirect("/Pages/SignInPage.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadUserProfile(((LoggedIn)this.Master).curUser);
            }

            if(((LoggedIn)this.Master).curUser.Role.Equals("Teacher"))
            {
                DatabaseEntities1 db = DatabaseSingleton.GetInstance();
                List<ArticleHeader> curTeacherArticles = (from a in db.ArticleHeaders where a.UserID == ((LoggedIn)this.Master).curUser.Id select a).ToList();

                HtmlGenericControl  div = new HtmlGenericControl("div");
                div.Attributes["class"] = "mx-auto d-flex col-sm-7 flex-row flex-wrap bg-info align-items-center rounded justify-content-center p-3";
                div.ID = "ArticleContainer";

                foreach(ArticleHeader article in curTeacherArticles)
                {
                    div.Controls.Add(createCards(article, db));
                }
                ArticlePanels.Controls.Add(div);
            }
        }

        private void LoadUserProfile(User curUser)
        {

            if (curUser != null)
            {
                NameLbl.Text = curUser.Name;
                EmailLbl.Text = curUser.Email;
                PhoneLbl.Text =  Convert.ToString(curUser.Phone_number);
                DOBLbl.Text = curUser.DOB.ToString("dd-MM-yyyy");
                RoleLbl.Text = curUser.Role;

            }
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Response.Cookies["user-cookie"].Expires = DateTime.Now.AddDays(-1);
            Session.Clear();
            Response.Redirect("/Pages/LandingPage.aspx");
        }

        private void updateEvent(object sender, EventArgs e)
        {
            DatabaseEntities1 db = DatabaseSingleton.GetInstance();
            string articleId = ((Button)sender).ID.Replace("upd_btn_", "");
            string title = (from d in db.ArticleHeaders where d.ArticleID == articleId select d.ArticleTitle).FirstOrDefault().ToString();
            Response.Redirect("~/Pages/SectionsCreationVer2.aspx?Title=" + title + "&ID=" + articleId + "&IsUpdate=1");
        }

        private void deleteEvent(object sender, EventArgs e)
        {
            string articleId = ((Button)sender).ID.Replace("del_btn_", "");
            DatabaseEntities1 db = DatabaseSingleton.GetInstance();

            ArticleContent articleObject = (from d in db.ArticleContents where d.ArticleID == articleId select d).FirstOrDefault();
            db.ArticleContents.Remove(articleObject);

            ArticleHeader article = (from a in db.ArticleHeaders where a.ArticleID == articleId select a).FirstOrDefault(); 
            db.ArticleHeaders.Remove(article);
            db.SaveChanges();

            Response.Redirect(Request.RawUrl);
        }

        private HtmlGenericControl createCards(ArticleHeader article, DatabaseEntities1 db)
        {
            String subject = (from s in db.SubjectHeaders where article.SubjectID == s.SubjectID select s.SubjectTitle).FirstOrDefault();
            String category = (from c in db.CategoryHeaders where c.CategoryID == article.CategoryID select c.CategoryTitle).FirstOrDefault();

            HtmlGenericControl cards = new HtmlGenericControl("div");
            cards.Attributes["class"] = "card w-20 bg-primary rounded mx-2 my-2";
            HtmlGenericControl title = new HtmlGenericControl("h5");
            title.Attributes["class"] = "card-title mx-2 my-2 alatsi-regular text-wrap";
            title.InnerHtml = article.ArticleTitle;
            cards.Controls.Add(title);

            HtmlGenericControl cardBody = new HtmlGenericControl("div");
            cardBody.Attributes["class"] = "card-body alatsi-regular";
            cardBody.InnerHtml = "<p>Subject: " + subject + "</p> <p>Category: " + category + "</p>";

            Button del_btn = new Button();
            del_btn.ID = "del_btn_" + article.ArticleID;
            del_btn.CssClass = "btn bg-info mx-2";
            del_btn.Text = "Delete";
            del_btn.Click += new EventHandler(deleteEvent);

            Button upd_btn = new Button();
            upd_btn.ID = "upd_btn_" + article.ArticleID;
            upd_btn.CssClass = "btn bg-info";
            upd_btn.Text = "Edit";
            upd_btn.Click += new EventHandler(updateEvent);

            cardBody.Controls.Add(del_btn);
            cardBody.Controls.Add(upd_btn);
            cards.Controls.Add(cardBody);

            return cards;
        }
    }
}