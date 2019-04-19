<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<!DOCTYPE html>

<html lang="en">
<head>
<title>tomorrwland home page </title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
      <h1><a href="#"><strong>tomorrwland</strong> </a></h1>
    </div>
       <nav>
      <ul>
        <li><a href="index.aspx" class="current">Home </a></li>
              <li><a href="cart.aspx" >cart </a></li>
       
        <li><a href="register.aspx" >register</a></li>
        <li><a href="contact.aspx">contact</a></li>
        <li><a href="about.aspx">about</a></li>
		
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>
    <div id="faded">
      <div class="rap"> <a href="#"><img src="images/big-img1.jpg" alt="" width="571" height="398"></a> <a href="#"><img src="images/big-img2.jpg" alt="" width="571" height="398"></a> <a href="#"><img src="images/big-img3.jpg" alt="" width="571" height="398"></a> </div>
      <ul class="pagination">
        <li> <a href="#" rel="0"> <img src="images/f_thumb1.png" alt=""> <span class="left">  accesses<br />
          price<br />
          </span> <span class="right">san paulo<br />
         2500$ with plane<br />
          </span> </a> </li>
        <li> <a href="#" rel="1"> <img src="images/f_thumb2.png" alt=""> <span class="left"> new deal :<br />
          price<br />
          deal </span> <span class="right">full madness  <br />
           407$<br />
           </span> </a> </li>
        <li> <a href="#" rel="2"> <img src="images/f_thumb3.png" alt=""> <span class="left"> best deal<br />
          price<br />
          </span> <span class="right">dreamvile <br />
          650$<br />
          </span> </a> </li>

      </ul>
    
  </div>
    </div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="mannager" />
</header>

<footer>
  <div class="footerlink">
   
  <p class="lf"><h3>Copyright &copy; khalil daebs and shrbel mousa  </h3></p>
   
    <div style="clear:both;"></div>
  </div>
</footer>
    </form>

</html>
