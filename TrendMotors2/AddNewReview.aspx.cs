using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrendMotors2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddReview_Click(object sender, EventArgs e)
        {
            
            DataAccessLayer dao = new DataAccessLayer();
            if(fpImage.HasFile)
            {
                string str = fpImage.FileName;
                fpImage.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str);

                string path = "/images/" + str.ToString();

                dao.addReview(txtName.Text, txtReview.Text, path, Convert.ToInt32(txtStars.Text));
                lblMessage.Visible = true;
                lblMessage.Text = "The Review added successfully";
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Please add an Image";

            }
        }
    }
}