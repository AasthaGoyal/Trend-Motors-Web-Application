using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MockExamMidterm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            dao.AddOrder(txtName.Text, Convert.ToInt32(txtPrice.Text), txtDescription.Text);
            Label1.Text = "Product Added Succesfully";
        }
    }
}