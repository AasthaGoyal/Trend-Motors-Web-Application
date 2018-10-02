using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;


namespace BootstrapDemo
{
    public partial class FrgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(connectionString);
            string query = "Select emailId from tblStaff where emailId = @emailId";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@emailId", txtEmailId.Text);
            connection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string Username = dr["emailId"].ToString();
                string link = "http://localhost:58669/ResetPassword.aspx";

                MailMessage mm = new MailMessage("aastha2150@gmail.com", txtEmailId.Text);
                mm.Subject = "Reset Password Confirmation Email";
                mm.Body = string.Format("Hello: <h1> {0} </h1> is your email id <br/> Click on the link below to reset your password <br/> <h1>{1} </h1>  ", Username, link);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                //Enter email username
                nc.UserName = "aastha2150@gmail.com";
                //Enter email password
                nc.Password = " Goyal0412aastha";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMessage.Text = "The email was send successfully to " + txtEmailId.Text;
                lblMessage.ForeColor = Color.Green;

            }
            else
            {
                lblMessage.Text = txtEmailId.Text + " This email doesn't exists in the database";
                lblMessage.ForeColor = Color.Red;
            }


        }
    }
}