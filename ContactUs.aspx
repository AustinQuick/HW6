
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Contact Info</title>
     <link rel="stylesheet" type="text/css" href="Style.css" />
</head>

<body>
    <div class="header">
        <h2 class="auto-style1" style="text-align: center">Wicked Easy Recipes</h2>

    </div>

    <h4 class="auto-style1" style="font-weight: normal; text-align: center">Using 5 Ingredients or Less!</h4>

    <br />

    <form id="form1" runat="server">
        <div class="auto-style1" style="text-align: center">
        <a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp;
        <a href="NewRecipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp;
        <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp;
        <a href="ContactUs.aspx" style="color: #696969">Contact Us</a>&nbsp; |&nbsp


    <p style="text-align: left; margin-left: 200px;">
        <br /><br /><br />

        Your Email Address:

        <br /><br />

        <asp:TextBox ID="email" runat="server" Height="20px" Width="260px" BackColor="LightCoral"></asp:TextBox>

        <br /><br /><br /><br />

        Your Message: <br /><br />

        <asp:TextBox ID="message" runat="server" Height="100px" Width="400px" BackColor="LightCoral"></asp:TextBox>

        <br /><br /><br />

        </p>

        <p style="text-align: center">
        <asp:Button ID="sendMail" runat="server" Text="Send Message" Height="35px" Width="150px" BackColor="#F08080" Font-Bold="True" ForeColor="White"   />

        </p>

     </form>
</body>
</html>
