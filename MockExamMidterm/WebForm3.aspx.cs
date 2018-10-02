using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MockExamMidterm
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            txtAmount.Text = dao.calculateTotal().ToString();

        }

        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {

        }
    }
}