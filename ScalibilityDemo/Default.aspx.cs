using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScalibilityDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLunch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?menuName=Lunch");
        }

        protected void btnBreakfast_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?menuName=Breakfast");
        }

        protected void btnDinner_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx?menuName=Dinner");
        }
    }
}