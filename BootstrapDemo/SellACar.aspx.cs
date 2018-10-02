using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapDemo
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            id = Request.Form["txtId"];
            dl1.Visible = true;
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            dao.SellaCar(Convert.ToInt32(id), Convert.ToInt32(txtSellingPrice.Text), txtName.Text, txtPhoneNo.Text, txtAddress.Text);
            dao.DecreaseQuantity(Convert.ToInt32(id));
            lblMessage.Text = "The car was sold successfully";
            btnReport.Visible = true;
            
        }

        protected void btnCreateReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellCarReport.aspx?id='" + id + "'");
        }

        protected void btnCin_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Cin.pdf");
            Response.TransmitFile(Server.MapPath("doc/cin.pdf"));
            Response.End();
        }

        protected void btnAgreement_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Sale Agreement.pdf");
            Response.TransmitFile(Server.MapPath("doc/agreement.pdf"));
            Response.End();
        }

       
       
    }
}