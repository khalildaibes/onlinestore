using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {

                TextBox2.Text = Request.Cookies["UserName"].Value;
                TextBox2.Visible = false;
                Label3.Text = "WELCOME ==>" + Request.Cookies["UserName"].Value;
                Button1.Visible = false;
                click();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(30);
        Response.Cookies["UserId"].Value = TextBox2.Text.Trim();
        Label3.Text = Request.Cookies["UserID"].Value;
        TextBox2.Visible = false;
        Button1.Visible = false;
        String str2 = null ;
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
    constring.Open();
    SqlCommand cmd1 = new SqlCommand("Select * from Users_Products where user_id= @user_id  ", constring);
  cmd1.Parameters.AddWithValue("@user_id", this.TextBox2.Text);
    SqlDataAdapter da = new SqlDataAdapter(cmd1);
    cmd1.ExecuteNonQuery();
    DataSet ds = new DataSet();
    da.Fill(ds);
    GridView1.DataSource = ds;
    GridView1.DataBind();


    }




    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
            
       SqlCommand cmd2 = new SqlCommand("delete  from Users_Products where user_id= @user_id  and order_num =@order_num ", constring);
        cmd2.Parameters.AddWithValue("@user_id", this.TextBox2.Text);
         cmd2.Parameters.AddWithValue("@order_num",GridView1.Rows[e.RowIndex].Cells[5].Text);
         cmd2.ExecuteNonQuery();
         SqlCommand cmd1 = new SqlCommand("Select * from Users_Products where user_id= @user_id", constring);
         cmd1.Parameters.AddWithValue("@user_id", this.TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();


      SqlCommand cmd1 = new SqlCommand("update  users_products set status = 5  where order_num=@order_num  ", constring);
        cmd1.Parameters.AddWithValue("@order_num", GridView1.Rows[e.NewSelectedIndex].Cells[5].Text);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("Select * from Users_Products where user_id= @user_id  ", constring);
        cmd2.Parameters.AddWithValue("@user_id", this.TextBox2.Text);
  
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert( 'your order have been succssesful compleated');", true);
      
        GridView1.DataBind();
    }
    public void click()
    {
        String str2 = null;
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Users_Products where user_id= @user_id  ", constring);
        cmd1.Parameters.AddWithValue("@user_id", this.TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        cmd1.ExecuteNonQuery();
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}