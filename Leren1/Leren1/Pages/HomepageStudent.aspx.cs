using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leren1.Pages
{
    public partial class HomepageStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Pages/CoursePage.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Pages/StayTunedPage.aspx");
        }

        protected void ImageButt_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../Pages/StayTunedPage.aspx");
        }
    }
}