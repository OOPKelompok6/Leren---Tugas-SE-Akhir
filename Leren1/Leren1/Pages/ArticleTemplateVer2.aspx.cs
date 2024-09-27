using AngleSharp.Text;
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
    public partial class ArticleTemplateVer2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseEntities1 db = DatabaseSingleton.GetInstance();
            String curArticleID = Request["ID"];
            ArticleContent d = ArticlesRepository.getArticleContentFromID(curArticleID);
            String contentString = d.ContentString;
            mainTitle.InnerHtml = ArticlesRepository.getArticleHeaderFromID(curArticleID).ArticleTitle;

            for (int i = 0; i < d.Sections; i++)
            {
                contentString = populateSidebar(i, contentString);
            }
            mainContent.InnerHtml = contentString;

        }
        private String populateSidebar(int i, String contentString)
        {
            HtmlGenericControl sidebarItems = new HtmlGenericControl("a");
            sidebarItems.Attributes["class"] = "nav-link alatsi-regular align-self-center";
            sidebarItems.Attributes["href"] = "#item-" + Convert.ToString(i + 1);
            sidebarItems.InnerHtml = "Section " + Convert.ToString(i + 1);
            this.Master.FindControl("ContentPlaceHolder1").FindControl("secDiv").Controls.Add(sidebarItems);

            contentString = contentString.ReplaceFirst("class=\"border-2 border-dark\">",
                "class=\"border-2 border-dark placeboClass\"> <div style:\"display:hidden;\" id=\"item-" + 
                Convert.ToString(i + 1) + "\"></div>");
            return contentString;
        }
    }
}