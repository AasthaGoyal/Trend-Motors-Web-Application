using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrendMotors2
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie user = Request.Cookies["user"];

            //if (user != null)
            //{
            //    lblName.Text = "Welcome " + user["userName"];
            //    // btnLogout.Text = user["userName"].ToString() + "(Logout)";
            //}
            //else
            //{
            //    Response.Redirect("EmployeeLogin.aspx");
            //}
        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            //dao.registerUser(txtFirstName.Text, txtLastName.Text, txtPosition.Text, txtContactNo.Text, txtEmailId.Text, txtUsername.Text, txtPassword.Text);
            //txtMessage.Visible = true;
            //txtMessage.Text = "Staff Added Successfully!!!";
        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {

        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtYear_TextChanged(object sender, EventArgs e)
        {

        }
    }
}