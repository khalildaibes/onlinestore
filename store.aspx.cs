using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
public partial class store1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {

                TextBox1.Text = Request.Cookies["UserName"].Value;
                TextBox1.Visible = false;
                TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                TextBox2.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Text =  "WELCOME ==>"+Request.Cookies["UserName"].Value;
                Button1.Visible = false;
            }

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        String str2 = "";
        SqlCommand cmd1 = new SqlCommand("Select count (*) from Users where user_id='" + TextBox1.Text + "'", con);
        con.Open();
        int  result =(int) cmd1.ExecuteScalar();
        if ( result >0)
        {
            
            Button1.Visible = false;
                   Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);

        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
    Response.Cookies["UserName"].Value = TextBox1.Text.Trim();
    Response.Cookies["Password"].Value = TextBox2.Text.Trim();


            
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('donkey');", true);
        }
    }
}