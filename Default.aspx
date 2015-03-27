﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <title>Wicked Easy Recipes</title>
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

   <div style="align-content:center">
        <div class="table">
    
        <asp:SqlDataSource ID="sql_NewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:AMQuick_HW6 %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [AMQuick_HW6]" UpdateCommand="UPDATE [AMQuick_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
            <div>
        
            <br />
        
            </div>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sql_NewRecipe" HorizontalAlign="Center" style="margin-left:auto;margin-right:auto; margin-bottom: 26px;" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe" SortExpression="recipeName" ControlStyle-BackColor="#FFFF99" >
<ControlStyle BackColor="#FFFF99"></ControlStyle>
                </asp:BoundField>
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="RecipeDetails.aspx?recipeID={0}" Text="Select" />
            </Columns>
            <FooterStyle BackColor="#FFFF99" ForeColor="#696969" />
            <HeaderStyle CssClass="columns" BackColor="#FFFF99" Font-Bold="True" ForeColor="#696969" />

            <PagerStyle BackColor="#FFFF99" ForeColor="#696969" HorizontalAlign="Left" />
            <RowStyle BackColor="#F08080" ForeColor="#FFFFFF" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />

        </asp:GridView>
    </div>
    </div>

    </form>

</body>

</html>
