using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible =false;
        GridView3.Visible = false;
    }


    protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView3_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "sharbel" ) 
        {
            if (TextBox2.Text == "demo123")
            {
                GridView1.Visible = true;
                GridView2.Visible = true;
                GridView3.Visible = true;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
                Label1.Visible = false;
                Label3.Text = "WELCOME SHARBEL ";   
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('amigo uncorrect password');", true);
       
            }
        }
        else  if (TextBox1.Text == "khalil")
        {
            if (TextBox2.Text == "123demo")
            {
                GridView1.Visible = true;
                GridView2.Visible = true;
                GridView3.Visible = true;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
                Label1.Visible = false;
                Label3.Text = "WELCOME KHALIL";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('amigo uncorrect password');", true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('amigo uncorrect user');", true);
        }
    }
}/*  protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();

        SqlCommand cmd2 = new SqlCommand("delete  from Products where product_id= @product_id  ", constring);
        cmd2.Parameters.AddWithValue("@product_id", GridView1.Rows[e.RowIndex].Cells[0].Text);
       cmd2.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();

     
    }



   

    
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();

        SqlCommand cmd2 = new SqlCommand("delete  from Users_Products where user_id= @user_id  and order_num=@order_num ", constring);
        cmd2.Parameters.AddWithValue("@user_id", GridView3.Rows[e.RowIndex].Cells[1].Text);
        cmd2.Parameters.AddWithValue("@order_num", GridView3.Rows[e.RowIndex].Cells[7].Text);
        cmd2.ExecuteNonQuery();

        GridView3.DataBind();
         
    }
   

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridView3.DataBind();
       
    }
    protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd2 = new SqlCommand("delete  from Users where user_id= @user_id  ", constring);
        cmd2.Parameters.AddWithValue("@user_id", GridView4.Rows[e.RowIndex].Cells[2].Text);
        cmd2.ExecuteNonQuery();
       
        GridView4.DataBind();
    }
    protected void GridView4_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        int ind = GridView1.EditIndex;
        ind = ind + 1;
        String product_id = GridView1.Rows[ind].Cells[0].Text;
        String product_price = GridView1.Rows[ind].Cells[1].Text;
        String product_desc = GridView1.Rows[ind].Cells[2].Text;
        String product_amount_in_storage = GridView1.Rows[ind].Cells[3].Text;


        SqlCommand cmd2 = new SqlCommand("UPDATE products set product_price=@product_price,product_desc=@product_desc,product_amount_in_storage=@product_amount_in_storage where product_id= @product_id  ", constring);
        cmd2.Parameters.AddWithValue("@product_price", product_price);
        cmd2.Parameters.AddWithValue("@product_desc", product_desc);
        cmd2.Parameters.AddWithValue("@product_amount_in_storage", product_amount_in_storage);
        cmd2.Parameters.AddWithValue("@product_id", product_id);

        cmd2.ExecuteNonQuery();
        constring.Close();
        GridView1.DataBind();
    }
    protected void g1up_Click(object sender, EventArgs e)
    {

        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        int ind=GridView1.EditIndex;
        String product_id = GridView1.Rows[ind].Cells[0].Text;
        String product_price = GridView1.Rows[ind].Cells[1].Text;
        String product_desc = GridView1.Rows[ind].Cells[2].Text;
        String product_amount_in_storage = GridView1.Rows[ind].Cells[3].Text;
      

        SqlCommand cmd2 = new SqlCommand("update products set product_price=@product_price,product_desc=@product_desc,product_amount_in_storage=@product_amount_in_storage where product_id= @product_id  ", constring);
        cmd2.Parameters.AddWithValue("@product_price", product_price);
        cmd2.Parameters.AddWithValue("@product_desc", product_desc);
        cmd2.Parameters.AddWithValue("@product_amount_in_storage", product_amount_in_storage);
        cmd2.Parameters.AddWithValue("@product_id", product_id);

        cmd2.ExecuteNonQuery();
      
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void g4_Click1(object sender, EventArgs e)
    {

        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
       
            int ind=GridView4.EditIndex;
            String fname = GridView4.Rows[ind].Cells[0].Text;
        String lname = GridView4.Rows[ind].Cells[1].Text;
        String id = GridView4.Rows[ind].Cells[2].Text;
        String address = GridView4.Rows[ind].Cells[3].Text;
        String postcode = GridView4.Rows[ind].Cells[4].Text;
        String phone = GridView4.Rows[ind].Cells[5].Text;
        String password = GridView4.Rows[ind].Cells[6].Text;
        String mail = GridView4.Rows[ind].Cells[7].Text;
        String payment = GridView4.Rows[ind].Cells[8].Text;
        String cvc = GridView4.Rows[ind].Cells[9].Text;
        String date = GridView4.Rows[ind].Cells[10].Text;


        SqlCommand cmd2 = new SqlCommand("update Users set user_fname=@user_fname ,user_lname=@user_lname,user_address=@user_address,user_postcode=@user_postcode,user_phone=@user_phone ,user_password=@user_password,user_mail=@user_email,user_payment=@user_payment,user_payment_cvc=@user_payment_cvc,user_payment_date=@user_payment_date   where user_id= @user_id  ", constring);
        cmd2.Parameters.AddWithValue("@user_fname", fname);

        cmd2.Parameters.AddWithValue("@user_lname", lname);
        cmd2.Parameters.AddWithValue("@user_address", address);
        cmd2.Parameters.AddWithValue("@user_postcode", postcode);
        cmd2.Parameters.AddWithValue("@user_phone", phone);
        cmd2.Parameters.AddWithValue("@user_password", password);
        cmd2.Parameters.AddWithValue("@user_email", mail);
        cmd2.Parameters.AddWithValue("@user_payment", payment);
        cmd2.Parameters.AddWithValue("@user_payment_cvc", cvc);
        cmd2.Parameters.AddWithValue("@user_payment_date", date);
        cmd2.Parameters.AddWithValue("@user_id", id);
        cmd2.ExecuteNonQuery();

        GridView4.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdatedEventArgs e)
    {

        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        int ind = GridView1.EditIndex;
        String product_id = GridView1.Rows[ind].Cells[0].Text;
        String product_price = GridView1.Rows[ind].Cells[1].Text;
        String product_desc = GridView1.Rows[ind].Cells[2].Text;
        String product_amount_in_storage = GridView1.Rows[ind].Cells[3].Text;


        SqlCommand cmd2 = new SqlCommand("update products set product_price=@product_price,product_desc=@product_desc,product_amount_in_storage=@product_amount_in_storage where product_id= @product_id  ", constring);
        cmd2.Parameters.AddWithValue("@product_price", product_price);
        cmd2.Parameters.AddWithValue("@product_desc", product_desc);
        cmd2.Parameters.AddWithValue("@product_amount_in_storage", product_amount_in_storage);
        cmd2.Parameters.AddWithValue("@product_id", product_id);

        cmd2.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }*/