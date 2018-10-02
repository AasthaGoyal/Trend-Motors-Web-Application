using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapDemo
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnApplyFinance_OnClick(object sender, EventArgs e )
        {
            DataAccessLayer dao = new DataAccessLayer();
            // var title = Request.Form["dpTitle"];
            //ar option = title
            
        //  dao.ApplyFinance(Request.Form["dpTitle"], txtTitle.Text);

        }
    }
}