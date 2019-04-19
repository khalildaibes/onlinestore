<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>



<html lang="en">
<head>
<title>cart</title>
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
      <h1><a href="#"><strong> tomorrwland</strong> </a></h1>
    </div>
     <nav>
      <ul>
        <li><a href="index.aspx" >Home </a></li>
          <li><a herg="cart.aspx" class="current">cart</a></li>
        <li><a href="register.aspx" >register</a></li>
        <li><a href="contact.aspx">contact</a></li>
        <li><a href="about.aspx">about</a></li>
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx" >history</a></li>
      </ul>
    </nav>

  </div>
</header>
<section id="content">
  <div class="container_16">
  	  <center><h2>cart</h2></center>



	  <center>

	 	  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tomorrwland_projConnectionString4 %>" SelectCommand="SELECT * FROM [Users_Products]"></asp:SqlDataSource>
           <tr>
       <td>
          <asp:Label ID="Label3" runat="server" Text=" your id"></asp:Label>  
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </td>
       <td>&nbsp;
       
     </tr>
     <tr> 
       <td>
           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         </td>
       <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="get your cart" OnClick="Button1_Click" />
	 	  </center>
		</div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString8 %>" SelectCommand="SELECT * FROM [Users_Products]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="insure the order "></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="cancel the order "></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</section>
<footer>
  <div class="footerlink">
  
  <p class="lf"><h3>Copyright &copy; khalil daebs and shrbel mousa </h3></p>
   
    <div style="clear:both;"></div>
  </div>
</footer>

<!-- END PAGE SOURCE -->
    </form>

</html>


