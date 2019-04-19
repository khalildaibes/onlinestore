using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String p_id = TextBox1.Text;
        String p_price = TextBox2.Text;
        String p_desc = TextBox3.Text;
        String p_amount = TextBox4.Text;
        String photo = FileUpload1.FileName;
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("Select count(*) from Products where product_id =@product_id ", constring);
        cmd1.Parameters.AddWithValue("@product_id",p_id);
         constring.Open();
        int result = cmd1.ExecuteNonQuery();

        if (result != -1)
        {
            String str2;
            str2 = "the product id  exists  please choose another product id   ";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + str2 + "');", true);

        }

        if (result == -1)
        {

            SqlCommand cmd = new SqlCommand("insert into Products (product_id,product_price,product_desc,product_amount_in_storage,product_photo_path) values ('" + p_id + "'," + p_price + ",'" + p_desc + "'," + p_amount + ",'" + photo + "')", constring);

            cmd.ExecuteNonQuery();
            String str2;
            str2 = "the product have been added succsessfuly amigooos    ";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + str2 + "');", true);

            constring.Close();
        }
    }
}