using Leren1.Factory;
using Leren1.Masters;
using Leren1.Models;
using Leren1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leren1.Pages
{
    public partial class ArticleCreation : System.Web.UI.Page
    {
        private static List<SubjectHeader> subjectHeaders;
        private static List<CategoryHeader> categoryHeaders;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                subjectHeaders = ArticlesRepository.getSubjectHeaders();
                categoryHeaders = ArticlesRepository.getCategoryHeaders();
                DropDownCategory.DataSource = categoryHeaders.Select(c => c.CategoryTitle).ToList();
                DropDownSubjects.DataSource = subjectHeaders.Select(s => s.SubjectTitle).ToList();
                DropDownCategory.DataBind();
                DropDownSubjects.DataBind();
            }
        }

        private String GenerateArticleID()
        {
            Random rnd = new Random();
            int X = rnd.Next(1, 1000);
            String ArticleID = String.Format("AR{0:000}", X);
            return ArticleID;
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            String articleId = GenerateArticleID();
            String title = TextTitle.Text;
            String subject = DropDownSubjects.Text;
            String category = DropDownCategory.Text;
            String subjectId = subjectHeaders.Where(s => s.SubjectTitle == subject).Select(s => s.SubjectID).FirstOrDefault().ToString();
            String categoryId = categoryHeaders.Where(c => c.CategoryTitle == category).Select(c => c.CategoryID).FirstOrDefault().ToString();

            ArticleHeader newArticle = ArticleContentandHeaderFactory.createHeader(title, subjectId, articleId, categoryId, ((LoggedIn)this.Master).curUser.Id);
            ArticlesRepository.addnewHeader(newArticle);

            Response.Redirect("~/Pages/SectionsCreationVer2.aspx?Title=" + title + "&ID=" + articleId + "&IsUpdate=0");
        }
    }
}