using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapDemo
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            string returnName = Convert.ToString(dao.loginUser(Request.Form["txtUsername"], Request.Form["txtPassword"]));
            if (returnName == " ")
            {

                lblMessage.Text = "Invalid Username/password";
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
                lblMessage.Text = "Login successful";
                Response.Redirect("AddNewCar.aspx");


            }
        }
    }
}