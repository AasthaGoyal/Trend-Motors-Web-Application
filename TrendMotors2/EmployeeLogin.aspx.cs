using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrendMotors2
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            string returnName = Convert.ToString(dao.loginUser(txtUsername.Text, txtPassword.Text));
            if (returnName != " ")
            {
                Response.Redirect("AddNewCar.aspx");
                //txtError.Visible = true;
                //txtError.Text = "Welcome " + returnName;

                //HttpCookie user = new HttpCookie("user");
                //user["userName"] = txtUsername.Text;

                //// store as much data as you want.
                //user.Expires = DateTime.Now.AddDays(1d);
                //Response.Cookies.Add(user);

                //Response.Redirect("AddNewCar.aspx?name=" + returnName);
            }

            else
            {
                txtError.Visible = true;
                txtError.Text = "Invalid Username/password";

            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}