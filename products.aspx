<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>


<html lang="en">
<head>
<title>manager products</title>
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
      <h1><a href="#"><strong> tomorrwland</strong></a></h1>
    </div>
       <nav>
      <ul>
        <li><a href="index.aspx" >Home </a></li>
              <li><a href="cart.aspx" >cart </a></li>
       
        <li><a href="register.aspx" >register</a></li>
        <li><a href="contact.aspx" >contact</a></li>
        <li><a href="about.aspx">about</a></li>
       
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>

  </div>
</header>
<center>
       product id&nbsp;&nbsp;&nbsp;&nbsp; ====&gt;
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />product amount==&gt;
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
       <br /><br />
 product price ====&gt;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br /> product desc ====&gt;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br /> product photo path ====&gt;<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br /><br />
        
      <asp:Button ID="Button1" runat="server" Text="add" OnClick="Button1_Click" />

        </center>
<footer>
  <div class="footerlink">
   
  
      <br /><br /><br /><br /><br /><br />
     <p class="lf"><h3>Copyright &copy; khalil daebs and shrbel mousa</h3> </p>
   
    <div style="clear:both;"></div>
  </div>
</footer>

<!-- END PAGE SOURCE -->
    </form>

</html>


