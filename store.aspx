<%@ Page Language="C#" AutoEventWireup="true" CodeFile="store.aspx.cs" Inherits="store1" %>


<!DOCTYPE html>
<html lang="en">
<head>
<title>tomorrrwland </title>
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
    <form id="form1" runat="server">
<header>
  <div class="container_16">
    <div class="logo">
      <h1><a href="#"><strong> tomorrrwland</strong> </a></h1>
    </div>
       <nav>
      <ul>
        <li><a href="index.aspx" >Home </a></li>
              <li><a href="cart.aspx" >cart </a></li>
       
        <li><a href="register.aspx" >register</a></li>
        <li><a href="contact.aspx">contact</a></li>
        <li><a href="about.aspx">about</a></li>
        
		
        <li><a href="store.aspx"class="current">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>

  </div>
</header>
<section id="content">
  <div class="container_16">
  	  <center><h2><asp:Label ID="Label3" runat="server" Text="log in first "></asp:Label> </h2></center>
      <formview id ="form1">
	  <center><asp:Label ID="Label2" runat="server" Text=" your id"></asp:Label> </lael>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <br><br><asp:Label ID="Label1" runat="server" Text=" your password"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <br><br>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="LOG IN" />
          <br></p>
          </formview>
	<a href="store2.aspx ">
	TOMORROWLAND
 BOOM  BELGIUM 
24 - 25 - 26 JULY 2017 </a><br><br><br><br><br></p>
<a href="store3.aspx ">TOMORROWLAND
 SÃO PAULO  BRASIL 
1 - 2 - 3 MAY 2017 </a><br><br><br><br><br>
<a href="store4.aspx ">TOMORROWWORLD
 ATLANTA  USA 
25 -26 - 27 SEPTEMBER 2015 
2017 Tickets ON SALE NOW 



	  <a href="index.aspx">Back</a>
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

<!-- END PAGE SOURCE -->
    </form>

</html>

