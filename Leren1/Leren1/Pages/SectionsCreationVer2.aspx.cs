using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Leren1.Models;
using Ganss.Xss;
using Leren1.Repository;
using AngleSharp.Io;
using System.Data.Entity.Migrations;
using Leren1.Factory;

namespace Leren1.Pages
{
	public partial class SectionsCreationVer2 : System.Web.UI.Page
	{
		private int status;
		protected void Page_Load(object sender, EventArgs e)
		{
            status = Convert.ToInt32(Request["IsUpdate"]);
            if (!IsPostBack)
            {
                HtmlGenericControl titleHeader = this.Master.FindControl("ContentPlaceHolder1").FindControl("MainTitle") as HtmlGenericControl;
                titleHeader.InnerHtml = Request["Title"];

                if (status == 1)
                {
                    String articleId = Request["ID"];
                    DatabaseEntities1 db = DatabaseSingleton.GetInstance();
                    MainTextEditor.InnerHtml = ArticlesRepository.getArticleContentFromID(articleId).ContentString;
                }
            }
		}

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
			var sanitizer = new HtmlSanitizer();
			sanitizer.AllowedAttributes.Add("class");
            sanitizer.AllowedAttributes.Add("runat");
            sanitizer.AllowedAttributes.Add("allowfullscreen");
            sanitizer.AllowedClasses.Add("border-2");
			sanitizer.AllowedClasses.Add("border-dark");
            sanitizer.AllowedClasses.Add("img-fluid");
            sanitizer.AllowedClasses.Add("pseudoClass");
            sanitizer.AllowedTags.Add("iframe");

            String editorContent = sanitizer.Sanitize(HttpUtility.HtmlDecode(MainTextEditor.InnerHtml));
			int numOfSections = Regex.Matches(editorContent, "<hr class=\"border-2 border-dark\">").Count;

			if(numOfSections >  10)
			{
				LabelError.Text = "Sections cant be more than 10";
			}
			else
			{
                String id = Request["ID"];
                if (status == 0)
				{
                    ArticleContent newContent = ArticleContentandHeaderFactory.createContent(id, editorContent, numOfSections, GenerateObjectID());
                    ArticlesRepository.addContent(newContent);
                }
				else
				{
                    ArticleContent articleContent = ArticlesRepository.getArticleContentFromID(id);
                    articleContent.ContentString = editorContent;
                    articleContent.Sections = numOfSections;
                    ArticlesRepository.updateContent(articleContent);
                }

                Response.Redirect("~/Pages/OperationSuccess.aspx");
			}
        }

        private String GenerateObjectID()
        {
            Random rnd = new Random();
            int X = rnd.Next(1, 1000);
            String ArticleID = String.Format("OB{0:000}", X);

            return ArticleID;
        }
    }
}