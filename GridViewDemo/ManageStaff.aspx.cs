using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace GridViewDemo
{
    public partial class ManageStaff : System.Web.UI.Page
    {
        string connectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMockExamConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str);
                string path = "/images/" + str.ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand("insert into uploads values ('" + TextBox1.Text + "','" + path + "')", connection);
                cmd.ExecuteNonQuery();
                connection.Close();
                Label1.Text = "Image uploaded successfully!!!";

                //diaplaying images

                SqlDataAdapter da = new SqlDataAdapter("Select * from uploads", connection);
                DataTable dt = new DataTable();
                da.Fill(dt);
                // GridView1.DataSource = dt;
                DataList1.DataSource = dt;
                DataBind();

            }
            else
            {
                Label1.Text = "File not uploaded";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}