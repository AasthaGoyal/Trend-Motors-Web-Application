using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScalibilityDemo
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string menuName = Request.QueryString["menuName"];
            Label1.Text = menuName + "menu";
        }
    }
}