using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapDemo
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        DataAccessLayer dao = new DataAccessLayer();
        string img1="false", img2="false", img3="false", img4="false", img5="false", img6="false", img7="false", img8="false";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCar_Click (object sender, EventArgs e)
        {
            if (Image1.HasFile && Image2.HasFile && Image3.HasFile)
            {
                img1 = "true";
                img2 = "true";
                img3 = "true";
                if (Image4.HasFile)
                    img4 = "true";
                if (Image5.HasFile)
                    img5 = "true";
                if (Image6.HasFile)
                    img6 = "true";
                if (Image7.HasFile)
                    img7 = "true";
                if (Image8.HasFile)
                    img8 = "true";


            }

            else
            {
                
                lblMessage.Text = "Atleast Three images are required";
            }

            if(img4=="false")
            {
                ThreeImages();
            }
            else if(img5 == "false")
            {
                FourImages();
            }
            else if(img6=="false")
            {
                FiveImages();
            }
            else if(img7=="false")
            {
                SixImages();
            }
            else if(img8 =="false")
            {
                SevenImages();
            }
            else if(img8=="true")
            {
                EightImages();
            }
        }

        public void ThreeImages ()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();


            dao.addCarForSale(path1, path2, path3, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }

        public void FourImages()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string str4 = Image4.FileName;
            Image4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();
            string path4 = "/images/" + str4.ToString();

            dao.addCar4Pictures(path1, path2, path3, path4, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }

        public void FiveImages()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string str4 = Image4.FileName;
            Image4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

            string str5 = Image5.FileName;
            Image5.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str5);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();
            string path4 = "/images/" + str4.ToString();
            string path5 = "/images/" + str5.ToString();

            dao.addCar5Pictures(path1, path2, path3, path4, path5, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }

        public void SixImages()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string str4 = Image4.FileName;
            Image4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

            string str5 = Image5.FileName;
            Image5.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str5);

            string str6 = Image6.FileName;
            Image6.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str6);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();
            string path4 = "/images/" + str4.ToString();
            string path5 = "/images/" + str5.ToString();
            string path6 = "/images/" + str6.ToString();

            dao.addCar6Pictures(path1, path2, path3, path4, path5, path6, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }

        public void SevenImages()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string str4 = Image4.FileName;
            Image4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

            string str5 = Image5.FileName;
            Image5.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str5);

            string str6 = Image6.FileName;
            Image6.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str6);

            string str7 = Image7.FileName;
            Image7.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str7);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();
            string path4 = "/images/" + str4.ToString();
            string path5 = "/images/" + str5.ToString();
            string path6 = "/images/" + str6.ToString();
            string path7 = "/images/" + str7.ToString();

            dao.addCar7Pictures(path1, path2, path3, path4, path5, path6, path7, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }

        public void EightImages()
        {
            string str1 = Image1.FileName;
            Image1.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str1);

            string str2 = Image2.FileName;
            Image2.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str2);

            string str3 = Image3.FileName;
            Image3.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str3);

            string str4 = Image4.FileName;
            Image4.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str4);

            string str5 = Image5.FileName;
            Image5.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str5);

            string str6 = Image6.FileName;
            Image6.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str6);

            string str7 = Image7.FileName;
            Image7.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str7);

            string str8 = Image8.FileName;
            Image8.PostedFile.SaveAs(Server.MapPath(".") + "/images/" + str8);

            string promotion = Request.Form["promotion"];

            string path1 = "/images/" + str1.ToString();
            string path2 = "/images/" + str2.ToString();
            string path3 = "/images/" + str3.ToString();
            string path4 = "/images/" + str4.ToString();
            string path5 = "/images/" + str5.ToString();
            string path6 = "/images/" + str6.ToString();
            string path7 = "/images/" + str7.ToString();
            string path8 = "/images/" + str8.ToString();

            dao.addCar8Pictures(path1, path2, path3, path4, path5, path6, path7, path8, txtModel.Text, txtMake.Text, txtYear.Text, txtDescription.Text, txtkms.Text, txtEngineSize.Text, txtFuel.Text, txtSeats.Text, Convert.ToInt32(txtSellingPrice.Text), Convert.ToInt32(txtQuantity.Text), Convert.ToInt32(txtDollar.Text), promotion);

            lblMessage.Text = "Car added successfully!!!";

        }




    }
}