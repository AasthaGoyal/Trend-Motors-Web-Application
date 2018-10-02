using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TrendMotors2
{
    public partial class AddNewCar : System.Web.UI.Page
    {
        public string description;
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie user = Request.Cookies["user"];

            //if (user != null)
            //{
            //   lblName.Text = user["userName"];
            //   // btnLogout.Text = user["userName"].ToString() + "(Logout)";
            //}
            //else
            //{
            //    Response.Redirect("Login.aspx");
            //}
        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            if (FileUpload1.HasFile)
            {
                string str1 = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

                string str2 = FileUpload2.FileName;
                FileUpload2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

                string str3 = FileUpload3.FileName;
                FileUpload3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

                string str4 = FileUpload4.FileName;
                FileUpload4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

                string str5 = FileUpload5.FileName;
                FileUpload5.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str5);

                string path1 = "/images/" + str1.ToString();
                string path2 = "/images/" + str2.ToString();
                string path3 = "/images/" + str3.ToString();
                string path4 = "/images/" + str4.ToString();
                string path5 = "/images/" + str5.ToString();

                //dao.addCarForSale(txtname.Text, txtmake.Text, txtYear.Text,  path1, path2, path3, path4, path5, Convert.ToInt32(txtPrice.Text), Convert.ToInt32(txtEngineSize.Text), txtFuel.Text, txtdescription, Convert.ToInt32(txtKms.Text));
                Label1.Visible = true;
                Label1.Text = "Image uploaded successfully!!!";

                //diaplaying images

                //SqlDataAdapter da = new SqlDataAdapter("Select * from uploads", connection);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                //// GridView1.DataSource = dt;
                //DataList1.DataSource = dt;
                //DataBind();

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Atleast one image is required";
            }
        
        }

        protected void txtDescription_TextChanged(object sender, EventArgs e)
        {
            description = txtDescription.Text.ToString();
        }
    }
}