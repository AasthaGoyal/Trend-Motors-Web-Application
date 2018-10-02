using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace BootstrapDemo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            //string emailFrom = Request.Form[txtEmailId];

            //if(emailFrom != " ")
            //{
            //    MailMessage mm = new MailMessage(emailFrom, "trendmotorsnz@gmail.com");
            //    mm.Subject = "Enquiry regarding Trend Motors";
            //    mm.Body = string.Format("Hello: <h1> {0} </h1>  has an enquiry regarding Trend Motors <br/> Phone No of the customer:  <h1>{1} </h1> <br/> Email Id of the customer: <h2> {2} </h2> <br/> The Enquiry is: <br/> <h6> {3} </h6> ", Request.Form[txtName], txtPhoneNo.Text, emailFrom, txtMessage.Text);
            //    mm.IsBodyHtml = true;
            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Host = "smtp.gmail.com";
            //    smtp.EnableSsl = true;
            //    NetworkCredential nc = new NetworkCredential();
            //    nc.UserName = "aastha2150@gmail.com";
            //    nc.Password = "Goyal0412aastha";
            //    smtp.UseDefaultCredentials = true;
            //    smtp.Credentials = nc;
            //    smtp.Port = 587;
            //    smtp.Send(mm);

            //    lblMessage.Text = "Thanks for contacting us. We would in contact soon regarding your enquiry";

            //}
            //else
            //{
            //    lblMessage.Text = "Please enter your email id";
            //}
             }
    }
}