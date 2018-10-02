using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace ListViewDemo
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        public int quantity;
        SqlConnection connection = new SqlConnection(@"Data Source=aago001;Initial Catalog=dbMcdonald;Integrated Security=True");

        string Name, Description, image, category, price, Quantity;
        string s;
        string t;
        public int qty, tempId;
        int count = 0;
        int product_id;
        DataTable dt = new DataTable();


        string[] a = new string[7];
        

      

        protected void btnViewcart_Click(object sender, EventArgs e)
        {
           
            dt.Columns.AddRange(new DataColumn[7] { new DataColumn("productName"), new DataColumn("productDescription"), new DataColumn("productImage"), new DataColumn("productPrice"), new DataColumn("productCategory"), new DataColumn(quantity.ToString()) , new DataColumn(tempId.ToString())});
            
            if(Request.Cookies["cart"] != null)
            {
                s = Convert.ToString(Request.Cookies["cart"].Value);
                string[] strArr = s.Split('|');

                for (int i=0;i<strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j=0; j<strArr1.Length;j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), a[5].ToString());

                }
                
            }
       

            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from tblProducts where productId='" + tempId + "'";
            cmd.ExecuteNonQuery();
            d1.DataSource = dt;
            d1.DataBind();
        }

        protected void btnDeleteCart_Click (object sender, EventArgs e)
        {
            connection.Open();
            foreach (DataRow dr in dt.Rows)
            {
                if (count == tempId)
                {
                    product_id = Convert.ToInt32(dr["productId"].ToString());
                    qty = Convert.ToInt32(dr["productQuantity"].ToString());
                }
                count = count + 1;
            }
            count = 0;

            SqlCommand cmd1 = connection.CreateCommand();

            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update tblProducts set productQuantity = productQuantity +'" + txtQuantity.Text + "' where productId ='" + tempId + "'";
            cmd1.ExecuteNonQuery();

            lblMessage.Text = "The cart was deleted succesfully";
            connection.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            tempId = Convert.ToInt32(Request.QueryString["productId"]);

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            //int temp = Convert.ToInt32(lblid.Text); 
            qty = get_qty(tempId);

            if (qty == 0)
            {
                lblMessage.Text = "The product is currently out of stock";
            }

            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from tblProducts where productId='" + tempId +  "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow  dr in dt.Rows)
            {
                Name = dr["productName"].ToString();
                Description = dr["productDescription"].ToString();
                image = dr["productImage"].ToString();
                price = dr["productPrice"].ToString();
                category = dr["productCategory"].ToString();
                Quantity = dr["productQuantity"].ToString();
            }
         

             quantity = Convert.ToInt32(txtQuantity.Text);
            if(quantity <= Convert.ToInt32(Quantity))
            {
                if (Request.Cookies["cart"] == null)
                {
                    Response.Cookies["cart"].Value = Name.ToString() + "," + Description.ToString() + "," + image.ToString() + "," + price.ToString() + "," + category.ToString() + "," + quantity.ToString()+ "," + tempId.ToString();
                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["cart"].Value = Request.Cookies["cart"].Value + "|" + Name.ToString() + "," + Description.ToString() + "," + image.ToString() + "," + price.ToString() + "," + category.ToString() + "," + quantity.ToString();
                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(1);
                }


                lblMessage.Text = "The product added to cart successfully";

                SqlCommand cmd1 = connection.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update tblProducts set productQuantity = productQuantity -'" + txtQuantity.Text + "' where productId ='" + tempId + "'";
                cmd1.ExecuteNonQuery();

                //Response.Redirect("~ProductDetails.aspx?productId='" + tempId + "'");

            }
            else
            {
                lblMessage.Text = "Please enter less quantity";
            }



            connection.Close();
        }

        public int get_qty(int id)
        {
            connection.Open();
            SqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from tblProducts where productId ='" + id + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
               
                qty = Convert.ToInt32(dr["productQuantity"].ToString());
            }
            connection.Close();
            return qty;

        }
    }
}