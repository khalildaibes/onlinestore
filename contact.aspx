<%@ Page Language="c#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>


<html lang="en">
<head>
<title>contact us</title>
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

<script>
				function func1()
				{
					alert("Your Contact have been send!");
				}
</script>

</head>
<body>
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
        <li><a href="contact.aspx" class="current">contact</a></li>
        <li><a href="about.aspx">about</a></li>
       
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>

  </div>
</header>
<section id="content">
  <div class="container_16">
    <div class="clearfix">
      <section id="mainContent" class="grid_10">
	<div id="content" class="left">
	<div VALIGN="Baseline" ALIGN="center">
	
		<h2>Contact</h2>
		<FONT FACE="Arial" SIZE="4" COLOR="#0Af0A0">
		<div class="content_half left form_field">
		Email:
		<input name="email" type="text" id="email" maxlength="40" /></br></br></br>
		your Phone nember:
		<input name="your Phone nember" type="number" id="your Phone nember" maxlength="9" /><br><br></br>
		 text:
<textarea style="text-align:right;font-size:20pt;" name="comments" cols="50" rows="5" >
</textarea><br><br>


		
		</div>
		</FONT>
		
	</div></div>
      </section>
      <aside class="grid_6">
        <div class="prefix_1">
          <article>
            <div class="box">
            		<h2>contact</h2>
					<h3><p>Enter your phone number and we will contact you</h3></p>
              <p></p>
            </div>
          </article>
          <article class="last">
            
            <a href="#" name="btn1" class="button" onclick="func1()">submit</a> </article>
        </div>
      </aside>
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
</html>


