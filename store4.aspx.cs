using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class store4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {

                TextBox2.Text = Request.Cookies["UserName"].Value;

                TextBox3.Attributes["value"] = Request.Cookies["Password"].Value;
                TextBox3.Visible = false;
                TextBox2.Visible = false;
                Button2.Visible = false;
                Label1.Visible = false;
                Label2.Text = Request.Cookies["UserName"].Value;
                Label3.Visible = false;
            }

        }


    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

        int s = int.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int s = int.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int s = Int32.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        int s = int.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

        int s = int.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int s = Int32.Parse(GridView1.SelectedRow.Cells[1].Text);
        buy(s);
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        constring.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Products ", constring);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        cmd1.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        String str2 = "";
        SqlCommand cmd1 = new SqlCommand("Select count(*) from Users where user_id= @user_id", con);
        cmd1.Parameters.AddWithValue("@user_id", this.TextBox2.Text);

        con.Open();

        var result = cmd1.ExecuteScalar();
        if (result == null)
        {
            str2 = "the user name dosent exists ";
        }
        if (str2 != "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('the user name does not exists /n \n  it wasnt a succsessful log in ');", true);

        }
        else
        {
            String str_id = TextBox2.Text;
            String str_pass = TextBox3.Text;

            GridView1.Visible = true;

            Button2.Visible = false;
            Label1.Visible = false;


        }
    }
    public void buy(int i)
    {

        SqlConnection con = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");

        SqlCommand cmd6 = new SqlCommand("Select product_amount_in_storage from products where product_id= @product_id", con);
        cmd6.Parameters.AddWithValue("@product_id", i);
        con.Open();
        int res = (int)cmd6.ExecuteScalar();
        if (res > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert( 'your have to do one more step ......please go to your  cart to insure the order  ');", true);
            SqlCommand cmd5 = new SqlCommand("update  products set product_amount_in_storage = product_amount_in_storage - 1 where product_id= @product_id  ", con);
            cmd5.Parameters.AddWithValue("@product_id", i);
            cmd5.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand("insert into Users_Products (product_id,user_id,status) values ( '" + i + "', '" + TextBox2.Text + "' , 1  )", con);

            cmd.ExecuteNonQuery();



            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert( 'your have to do one more step ......please go to your  cart to insure the order  ');", true);

        }
        else
        {



            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('something went wrong please contact our team ****sooorrryyy*****');", true);
        }
    }



    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

        int s = Convert.ToInt32(GridView1.Rows[e.NewSelectedIndex].Cells[1].Text);
        buy(s);

        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Request.Cookies["UserName"].Value = null;
        Request.Cookies["Password"].Value = null;
        Response.Cookies["UserName"].Expires = DateTime.Now.AddYears(-1);
        Response.Cookies["Password"].Expires = DateTime.Now.AddYears(-1);


    }
}


