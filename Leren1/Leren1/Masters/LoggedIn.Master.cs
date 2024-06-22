using Leren1.Models;
using Leren1.Repository;
using Leren1.utilScripts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Leren1.Masters
{
    public partial class LoggedIn : System.Web.UI.MasterPage
    {
        public User curUser = null;
        protected void Page_Init()
        {
            curUser = JSONtoObjectsUtils.JSONtoUser();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if((curUser != null) && (curUser.Role == "Teacher"))
            {
                HtmlGenericControl dynamicDiv = new HtmlGenericControl("div");
                dynamicDiv.Attributes["class"] = "p-2";

                HyperLink newArtlink = new HyperLink();
                newArtlink.Attributes["class"] = "btn outfit-SemiBolds";
                newArtlink.Attributes["id"] = "NewArticleBtn";
                newArtlink.NavigateUrl = "~/Pages/ArticleCreation.aspx";
                newArtlink.Text = "New Article";

                dynamicDiv.Controls.Add(newArtlink);
                CreateArtContainer.Controls.Add(dynamicDiv);
            }
        }

        protected void SearchBarBox_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/SearchTemplate.aspx?searchTerm=" + SearchBarBox.Text);
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Pages/SearchTemplate.aspx?searchTerm=" + SearchBarBox.Text);
        }

    }
}