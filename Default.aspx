<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<html lang="en">
<head>
<title>history of tomorrwland</title>
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

    <form id="form1" runat="server">
<header>
  <div class="container_16">
    <div class="logo">
      <h1><a href="#"><strong> tomorrwland</strong> </a></h1>
    </div>
     <nav>
      <ul>
        <li><a href="index.aspx" >Home </a></li>
              <li><a href="cart.aspx" >cart </a></li>
       
        <li><a href="register.aspx" >register</a></li>
        <li><a href="contact.aspx">contact</a></li>
        <li><a href="about.aspx">about</a></li>
        <li><a href="store.aspx">store</a></li>
        <li><a href="history.aspx">history</a></li>
      </ul>
    </nav>

  </div>
</header>
<section id="content">
  <div class="container_16">
  	  <center>
         <asp:Label ID="Label3" runat="server" Text="  admin name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <br />
          <asp:Label ID="Label1" runat="server" Text="admin password "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="password"></asp:TextBox>
          <br />
          <asp:Button ID="Button1" runat="server" Text="log in " OnClick="Button1_Click" />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="4" DataKeyNames="product_id" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                  <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                  <asp:BoundField DataField="product_desc" HeaderText="product_desc" SortExpression="product_desc" />
                  <asp:BoundField DataField="product_amount_in_storage" HeaderText="product_amount_in_storage" SortExpression="product_amount_in_storage" />
                  <asp:BoundField DataField="product_photo_path" HeaderText="product_photo_path" SortExpression="product_photo_path" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString8 %>" DeleteCommand="DELETE FROM [Products] WHERE [product_id] = @original_product_id AND [product_price] = @original_product_price AND [product_desc] = @original_product_desc AND [product_amount_in_storage] = @original_product_amount_in_storage AND [product_photo_path] = @original_product_photo_path" InsertCommand="INSERT INTO [Products] ([product_id], [product_price], [product_desc], [product_amount_in_storage], [product_photo_path]) VALUES (@product_id, @product_price, @product_desc, @product_amount_in_storage, @product_photo_path)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [product_price] = @product_price, [product_desc] = @product_desc, [product_amount_in_storage] = @product_amount_in_storage, [product_photo_path] = @product_photo_path WHERE [product_id] = @original_product_id AND [product_price] = @original_product_price AND [product_desc] = @original_product_desc AND [product_amount_in_storage] = @original_product_amount_in_storage AND [product_photo_path] = @original_product_photo_path">
              <DeleteParameters>
                  <asp:Parameter Name="original_product_id" Type="String" />
                  <asp:Parameter Name="original_product_price" Type="Int32" />
                  <asp:Parameter Name="original_product_desc" Type="String" />
                  <asp:Parameter Name="original_product_amount_in_storage" Type="Int32" />
                  <asp:Parameter Name="original_product_photo_path" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="product_id" Type="String" />
                  <asp:Parameter Name="product_price" Type="Int32" />
                  <asp:Parameter Name="product_desc" Type="String" />
                  <asp:Parameter Name="product_amount_in_storage" Type="Int32" />
                  <asp:Parameter Name="product_photo_path" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="product_price" Type="Int32" />
                  <asp:Parameter Name="product_desc" Type="String" />
                  <asp:Parameter Name="product_amount_in_storage" Type="Int32" />
                  <asp:Parameter Name="product_photo_path" Type="String" />
                  <asp:Parameter Name="original_product_id" Type="String" />
                  <asp:Parameter Name="original_product_price" Type="Int32" />
                  <asp:Parameter Name="original_product_desc" Type="String" />
                  <asp:Parameter Name="original_product_amount_in_storage" Type="Int32" />
                  <asp:Parameter Name="original_product_photo_path" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <br />
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellSpacing="4" DataKeyNames="user_id" DataSourceID="SqlDataSource2" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="user_fname" HeaderText="user_fname" SortExpression="user_fname" />
                  <asp:BoundField DataField="user_lname" HeaderText="user_lname" SortExpression="user_lname" />
                  <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                  <asp:BoundField DataField="user_address" HeaderText="user_address" SortExpression="user_address" />
                  <asp:BoundField DataField="user_postcode" HeaderText="user_postcode" SortExpression="user_postcode" />
                  <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                  <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
                  <asp:BoundField DataField="user_mail" HeaderText="user_mail" SortExpression="user_mail" />
                  <asp:BoundField DataField="user_payment" HeaderText="user_payment" SortExpression="user_payment" />
                  <asp:BoundField DataField="user_payment_cvc" HeaderText="user_payment_cvc" SortExpression="user_payment_cvc" />
                  <asp:BoundField DataField="user_payment_date" HeaderText="user_payment_date" SortExpression="user_payment_date" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString4 %>" DeleteCommand="DELETE FROM [Users] WHERE [user_id] = @original_user_id AND [user_fname] = @original_user_fname AND [user_lname] = @original_user_lname AND [user_address] = @original_user_address AND [user_postcode] = @original_user_postcode AND [user_phone] = @original_user_phone AND [user_password] = @original_user_password AND [user_mail] = @original_user_mail AND [user_payment] = @original_user_payment AND [user_payment_cvc] = @original_user_payment_cvc AND [user_payment_date] = @original_user_payment_date" InsertCommand="INSERT INTO [Users] ([user_fname], [user_lname], [user_id], [user_address], [user_postcode], [user_phone], [user_password], [user_mail], [user_payment], [user_payment_cvc], [user_payment_date]) VALUES (@user_fname, @user_lname, @user_id, @user_address, @user_postcode, @user_phone, @user_password, @user_mail, @user_payment, @user_payment_cvc, @user_payment_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [user_fname] = @user_fname, [user_lname] = @user_lname, [user_address] = @user_address, [user_postcode] = @user_postcode, [user_phone] = @user_phone, [user_password] = @user_password, [user_mail] = @user_mail, [user_payment] = @user_payment, [user_payment_cvc] = @user_payment_cvc, [user_payment_date] = @user_payment_date WHERE [user_id] = @original_user_id AND [user_fname] = @original_user_fname AND [user_lname] = @original_user_lname AND [user_address] = @original_user_address AND [user_postcode] = @original_user_postcode AND [user_phone] = @original_user_phone AND [user_password] = @original_user_password AND [user_mail] = @original_user_mail AND [user_payment] = @original_user_payment AND [user_payment_cvc] = @original_user_payment_cvc AND [user_payment_date] = @original_user_payment_date">
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
          <br />
          <br />
          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellSpacing="4" DataKeyNames="order_num" DataSourceID="SqlDataSource3" OnRowDeleting="GridView3_RowDeleting" OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                  <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                  <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                  <asp:BoundField DataField="order_num" HeaderText="order_num" SortExpression="order_num" InsertVisible="False" ReadOnly="True" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:asp_projConnectionString3 %>" DeleteCommand="DELETE FROM [Users_Products] WHERE [order_num] = @original_order_num AND [product_id] = @original_product_id AND [user_id] = @original_user_id AND [status] = @original_status" InsertCommand="INSERT INTO [Users_Products] ([product_id], [user_id], [status]) VALUES (@product_id, @user_id, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users_Products]" UpdateCommand="UPDATE [Users_Products] SET [product_id] = @product_id, [user_id] = @user_id, [status] = @status WHERE [order_num] = @original_order_num AND [product_id] = @original_product_id AND [user_id] = @original_user_id AND [status] = @original_status">
              <DeleteParameters>
                  <asp:Parameter Name="original_order_num" Type="Int32" />
                  <asp:Parameter Name="original_product_id" Type="String" />
                  <asp:Parameter Name="original_user_id" Type="String" />
                  <asp:Parameter Name="original_status" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="product_id" Type="String" />
                  <asp:Parameter Name="user_id" Type="String" />
                  <asp:Parameter Name="status" Type="Int32" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="product_id" Type="String" />
                  <asp:Parameter Name="user_id" Type="String" />
                  <asp:Parameter Name="status" Type="Int32" />
                  <asp:Parameter Name="original_order_num" Type="Int32" />
                  <asp:Parameter Name="original_product_id" Type="String" />
                  <asp:Parameter Name="original_user_id" Type="String" />
                  <asp:Parameter Name="original_status" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
	  </center>
		</div>

</section>
<footer>
  <div class="footerlink">
  
  <p class="lf"><h3>Copyright &copy; khalil daebs and shrbel mousausa</h3></p>
   
    <div style="clear:both;"></div>
  </div>
</footer>

<!-- END PAGE SOURCE -->
    </form>

</html>

