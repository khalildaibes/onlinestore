<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<html dir="rtl">
   <head>
   <body>
<title>tomorrwland</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_italic_400-Myriad_Pro_italic_600.font.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/jquery.faded.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</head>
<body>
<header>
  <div class="container_16">
    <div class="logo">
      <h1><a href="#"><strong> tomorrwland</strong> !!!</a></h1>
    </div>
       <nav>
      <ul>
        <li><a href="index.aspx" >Home </a></li>
              <li><a href="cart.aspx" >cart </a></li>
       
        <li><a href="register.aspx"class="current" >register</a></li>
        <li><a href="contact.aspx">contact</a></li>
        <li><a href="about.aspx">about</a></li>
      
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>

  </div>
</header>
   <basefont size="5" face="david"/>
   
  </head>
  <body bgcolor='black'>
  <center>
      <form id="form1" runat="server">
  <font size="9" color="white" face="david"><b>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString5 %>" SelectCommand="SELECT * FROM [Users]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Users] WHERE [user_id] = @original_user_id AND [user_fname] = @original_user_fname AND [user_lname] = @original_user_lname AND [user_address] = @original_user_address AND [user_postcode] = @original_user_postcode AND [user_phone] = @original_user_phone AND [user_password] = @original_user_password AND [user_mail] = @original_user_mail AND [user_payment] = @original_user_payment AND [user_payment_cvc] = @original_user_payment_cvc AND [user_payment_date] = @original_user_payment_date" InsertCommand="INSERT INTO [Users] ([user_fname], [user_lname], [user_id], [user_address], [user_postcode], [user_phone], [user_password], [user_mail], [user_payment], [user_payment_cvc], [user_payment_date]) VALUES (@user_fname, @user_lname, @user_id, @user_address, @user_postcode, @user_phone, @user_password, @user_mail, @user_payment, @user_payment_cvc, @user_payment_date)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Users] SET [user_fname] = @user_fname, [user_lname] = @user_lname, [user_address] = @user_address, [user_postcode] = @user_postcode, [user_phone] = @user_phone, [user_password] = @user_password, [user_mail] = @user_mail, [user_payment] = @user_payment, [user_payment_cvc] = @user_payment_cvc, [user_payment_date] = @user_payment_date WHERE [user_id] = @original_user_id AND [user_fname] = @original_user_fname AND [user_lname] = @original_user_lname AND [user_address] = @original_user_address AND [user_postcode] = @original_user_postcode AND [user_phone] = @original_user_phone AND [user_password] = @original_user_password AND [user_mail] = @original_user_mail AND [user_payment] = @original_user_payment AND [user_payment_cvc] = @original_user_payment_cvc AND [user_payment_date] = @original_user_payment_date">
              <DeleteParameters>
                  <asp:Parameter Name="original_user_id" Type="String" />
                  <asp:Parameter Name="original_user_fname" Type="String" />
                  <asp:Parameter Name="original_user_lname" Type="String" />
                  <asp:Parameter Name="original_user_address" Type="String" />
                  <asp:Parameter Name="original_user_postcode" Type="String" />
                  <asp:Parameter Name="original_user_phone" Type="String" />
                  <asp:Parameter Name="original_user_password" Type="String" />
                  <asp:Parameter Name="original_user_mail" Type="String" />
                  <asp:Parameter Name="original_user_payment" Type="String" />
                  <asp:Parameter Name="original_user_payment_cvc" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_user_payment_date" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="user_fname" Type="String" />
                  <asp:Parameter Name="user_lname" Type="String" />
                  <asp:Parameter Name="user_id" Type="String" />
                  <asp:Parameter Name="user_address" Type="String" />
                  <asp:Parameter Name="user_postcode" Type="String" />
                  <asp:Parameter Name="user_phone" Type="String" />
                  <asp:Parameter Name="user_password" Type="String" />
                  <asp:Parameter Name="user_mail" Type="String" />
                  <asp:Parameter Name="user_payment" Type="String" />
                  <asp:Parameter Name="user_payment_cvc" Type="String" />
                  <asp:Parameter DbType="Date" Name="user_payment_date" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="user_fname" Type="String" />
                  <asp:Parameter Name="user_lname" Type="String" />
                  <asp:Parameter Name="user_address" Type="String" />
                  <asp:Parameter Name="user_postcode" Type="String" />
                  <asp:Parameter Name="user_phone" Type="String" />
                  <asp:Parameter Name="user_password" Type="String" />
                  <asp:Parameter Name="user_mail" Type="String" />
                  <asp:Parameter Name="user_payment" Type="String" />
                  <asp:Parameter Name="user_payment_cvc" Type="String" />
                  <asp:Parameter DbType="Date" Name="user_payment_date" />
                  <asp:Parameter Name="original_user_id" Type="String" />
                  <asp:Parameter Name="original_user_fname" Type="String" />
                  <asp:Parameter Name="original_user_lname" Type="String" />
                  <asp:Parameter Name="original_user_address" Type="String" />
                  <asp:Parameter Name="original_user_postcode" Type="String" />
                  <asp:Parameter Name="original_user_phone" Type="String" />
                  <asp:Parameter Name="original_user_password" Type="String" />
                  <asp:Parameter Name="original_user_mail" Type="String" />
                  <asp:Parameter Name="original_user_payment" Type="String" />
                  <asp:Parameter Name="original_user_payment_cvc" Type="String" />
                  <asp:Parameter DbType="Date" Name="original_user_payment_date" />
              </UpdateParameters>
          </asp:SqlDataSource>
          registering ... </b></font>
   <br/><br/>
    <table bgcolor="gray">
     <tr>
       <td>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;first name&nbsp;&nbsp;
         </td>
       <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </td>
       
     </tr>
     <tr> 
       <td>
           last name</td>
       <td>
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           &nbsp;</td>
       
     </tr>
     <tr> 
       <td>
	       id</td>
       <td>
	       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         </td>
       
     </tr>
     <tr>
       <td>
           address</td> 
       <td>
           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
         </td>
       
     </tr>

	 <tr>
	 <td>
         post code</td>
       <td>
         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
         </td>	
	      </tr>

     <tr> 
   
       
     <td>
         phone number</td>
        </td><td>
         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
         </td>
     </tr>
        <tr>
            <td>

                password</td><td>

                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

            </td>
        </tr>
     <tr> 
       <td>
           mail</td>
       <td>
           <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
         </td>
     </tr>
          <tr> 
       <td>
           payment</td>
       <td>
           <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
         </td>
     </tr>
          <tr> 
       <td>
           cvc</td>
       <td>
           <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
         </td>
     </tr>
          <tr> 
       <td>
           date</td>
       <td>
         
           <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
         
         </td>
     </tr>
     </table>
<br/>
          <br/><br/>
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="clear" Width="73px" />
          &nbsp&nbsp&nbsp&nbsp&nbsp;
          <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" Width="80px" />
      </form>
  	
	  </center>
		</div>
		  
	 
	  </center>
		</div>
		
		
    <div class="clearfix">




    </div>
	
  </div>
</section>
<footer>
  <div class="footerlink">
  
  <p class="lf"><h3>Copyright &copy; khalil daebs and shrbel mousa</h3></p>
   
    <div style="clear:both;"></div>
  </div>
</footer>
thanks for registering  and welcome 
 </center>
 </body>
</html> 
