using Leren1.Models;
using Leren1.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Leren1.Pages
{
    public partial class SearchTemplate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseEntities1 db = DatabaseSingleton.GetInstance();
            String searchTerm = Request["searchTerm"];

            HtmlGenericControl mainContainer = new HtmlGenericControl("div");
            List<ArticleHeader> articles = (from aS in db.ArticleHeaders where aS.ArticleTitle.Contains(searchTerm) select aS).ToList();

            if(articles.Count == 0)
            {
                mainContainer.Attributes["class"] = "col-sm-8 d-flex flex-column text-align-center";

                HtmlGenericControl para = new HtmlGenericControl("p");
                para.Attributes["class"] = "alatsi-regular mx-auto my-4";
                para.InnerText = "No Article Found!";

                mainContainer.Controls.Add(para);
            }
            else
            {
                mainContainer.Attributes["class"] = "col-sm-8 d-flex flex-column";
                foreach (ArticleHeader article in articles)
                {
                    createResultItems(article, mainContainer, db);
                }
            }

            Results.Controls.Add(mainContainer);
        }

        private void createResultItems(ArticleHeader article, HtmlGenericControl mainContainer, DatabaseEntities1 db)
        {

            HtmlGenericControl dynamicDiv = new HtmlGenericControl("div");
            dynamicDiv.Attributes["class"] = "d-flex flex-column my-4 bg-info rounded";
            HtmlGenericControl link = new HtmlGenericControl("a");
            link.InnerHtml = article.ArticleTitle;
            link.Attributes["href"] = "ArticleTemplateVer2.aspx?ID=" + article.ArticleID;
            link.Attributes["class"] = "my-3 mx-2 me-auto alatsi-regular";
            dynamicDiv.Controls.Add(link);

            mainContainer.Controls.Add(dynamicDiv);
        }

    }
}