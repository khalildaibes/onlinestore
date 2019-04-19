<%@ Page Language="C#" AutoEventWireup="true" CodeFile="store4.aspx.cs" Inherits="store4" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
      <h1><a href="#"><strong> tomorrwland</strong></a></h1>
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
  	  <center><h2>&nbsp;</h2></center>
	  <center>
  <div class="container_16">
  	  <center><h2>tomorrwland </h2></center>
	 <form runat="server" >
          
	  
	     <asp:Label ID="Label2" runat="server" Text=" your id"></asp:Label>
          
	  
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          
	  
	  <br>   <asp:Label ID="Label3" runat="server" Text=" your password"></asp:Label> 
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         <br>  
	     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="log in " /><br /> 
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="log out " />
         <br />
	     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical"  Width="698px" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
                 <asp:TemplateField ShowHeader="False">
                     <ItemTemplate>
                         <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text="Buy" />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                 <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                 <asp:BoundField DataField="product_desc" HeaderText="product_desc" SortExpression="product_desc" />
                 <asp:BoundField DataField="product_amount_in_storage" HeaderText="product_amount_in_storage" SortExpression="product_amount_in_storage" />
                 <asp:TemplateField>
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("product_photo_path") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_photo_path") %>' />
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField ShowHeader="False" Visible="False">
                     <EditItemTemplate>
                         <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                         &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />
         </asp:GridView>
         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="25pt" Text="in ordr to see or to buy tickets you must log in first "></asp:Label>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString7 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
	  <br>  <br>  
	  <br>  <br> </form>
	  <br /> <br />
	  <a href="store.aspx" >Back</a>
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
</html>

