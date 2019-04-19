using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str2 = null;
        SqlConnection constring = new SqlConnection("Data Source=khalil;Initial Catalog=asp_proj;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("INSERT INTO [Users] ([user_fname], [user_lname], [user_id], [user_address], [user_postcode], [user_phone], [user_password], [user_mail], [user_payment], [user_payment_cvc], [user_payment_date]) VALUES (@user_fname, @user_lname, @user_id, @user_address, @user_postcode, @user_phone, @user_password, @user_mail, @user_payment, @user_payment_cvc, @user_payment_date) ", constring);
        cmd1.Parameters.AddWithValue("@user_fname", this.TextBox1.Text);
        cmd1.Parameters.AddWithValue("@user_lname", this.TextBox2.Text);
        cmd1.Parameters.AddWithValue("@user_id", this.TextBox3.Text);
        cmd1.Parameters.AddWithValue("@user_address", this.TextBox4.Text);
        cmd1.Parameters.AddWithValue("@user_postcode", this.TextBox5.Text);
        cmd1.Parameters.AddWithValue("@user_phone", this.TextBox6.Text);
        cmd1.Parameters.AddWithValue("@user_password", this.TextBox7.Text);
        cmd1.Parameters.AddWithValue("@user_mail", this.TextBox8.Text);
        cmd1.Parameters.AddWithValue("@user_payment", this.TextBox9.Text);
        cmd1.Parameters.AddWithValue("@user_payment_cvc", this.TextBox10.Text);
        cmd1.Parameters.AddWithValue("@user_payment_date", this.TextBox11.Text);
        
        constring.Open();
        if (! (checkjustnum(TextBox3.Text)) ){
            str2 += "the id have char";
        }
        if(!( checkjustnum(TextBox5.Text))){
             str2 += "the post have char";
        }
        if(!(checkjustnum(TextBox6.Text))){
            str2 += "the phone have char";
        } 
       if(!(checkjustnum(TextBox9.Text))){
            str2 += "the payment have char";
       }
        if(!(checkjustnum(TextBox10.Text))){ str2 += "the cvc have char";}
        
        if(!( cheknonum(TextBox1.Text)))
        { str2 += "the firstname have num";
        }
    
        if(!( cheknonum(TextBox2.Text))){
         str2 += "the lastnaem have num";}
        if(str2==null){
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('you have been succsessfuly registreed');", true);
            
      
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"+str2+"');", true);
      
        }
        }
        
    
       
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
      

    }
    public bool checkjustnum(string str)
    {
        int i;
        for (i = 0; i < str.Length - 1; i++)
        {
            if (str[i] > '9' || str[i] < '0')
            {
                return false;
            }
        }
            return true;
    }
    public bool cheknonum(string str)
    {
        int i;
        for (i = 0; i < str.Length - 1; i++)
        {
            if (str[i] <= '9' && str[i] >='0')
            {
                return false;
            }
        }
        return true;
       
    }
    public bool checksize(string str, int i)
    {
        if (str.Length - 1 != i)
        {
            return false;
        }
         return true ;
    }
   
    }
