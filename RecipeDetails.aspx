﻿﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

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

        <br />

<asp:SqlDataSource ID="sql_NewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:AMQuick_HW6 %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preperation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preperation, @notes)" SelectCommand="SELECT * FROM [AMQuick_HW6]" UpdateCommand="UPDATE [AMQuick_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preperation] = @preperation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
                <asp:Parameter Name="preperation" Type="String" />
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
                <asp:Parameter Name="preperation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <br />
  
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label> </span>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="recipeID" DataSourceID="sql_NewRecipe" Height="250px" Width="600px" DefaultMode="Insert" HorizontalAlign="Center" Font-Underline="False">
            <EditItemTemplate>
                <table class="table">
                    <tr>
                        <td>
                            Recipe: 
                        </td>
                        <td>
                            <asp:TextBox ID="tRecipe" runat="server" Text='<%# Bind("recipeName")%>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator CssClass="val" ID="valRecipe" runat="server" ErrorMessage="Please enter the name of the recipe." ControlToValidate="tRecipe"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Submitted By:
                        </td>
                        <td>
                            <asp:TextBox ID="tSubmittedBy" runat="server" Text='<%# Bind("submittedBy")%>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator CssClass="val" ID="valSubmittedBy" runat="server" ErrorMessage="Please enter who is submitting the recipe." ControlToValidate="tSubmittedBy"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #1:
                        </td>
                        <td>
                            <asp:TextBox ID="tIngredient1" runat="server" Text='<%# Bind("ingredient1")%>' />

                        </td>
                        <td>
                            <asp:RequiredFieldValidator CssClass="val" ID="valIngredient" runat="server" ErrorMessage="Please enter at least 1 ingredient." ControlToValidate="tIngredient1"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #2:
                        </td>
                        <td>
                            <asp:TextBox ID="tIngredient2" runat="server" Text='<%# Bind("ingredient2")%>' />
                        </td>

                        <td></td>

                    </tr>
                    <tr>
                        <td>
                            Ingredient #3:
                        </td>
                        <td>
                            <asp:TextBox ID="tIngredient3" runat="server" Text='<%# Bind("ingredient3")%>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #4:
                        </td>
                        <td>
                            <asp:TextBox ID="tIngredient4" runat="server" Text='<%# Bind("ingredient4")%>' />
                        </td>
                        <td>


                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ingredient #5:
                        </td>
                        <td>
                            <asp:TextBox ID="tIngredient5" runat="server" Text='<%# Bind("ingredient5") %>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Preperation:
                        </td>
                        <td>
                            <asp:TextBox ID="tPreperation" runat="server" Text='<%# Bind("preperation")%>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator CssClass="val" ID="valPreperation" runat="server" ErrorMessage="Please enter preperation instructions." ControlToValidate="tPreperation" Font-Bold="False" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            Notes:
                        </td>
                        <td>
                            <asp:TextBox ID="tNotes" runat="server" Text='<%# Bind("notes")%>' />
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <asp:Button ID="btnSave" runat="server" CausesValidation="true" CommandName="Edit" Text="Save" />
                        </td>
                        <td>

                        </td>
                    </tr>
                    
                </table>
            </EditItemTemplate>
            
            <ItemTemplate>
                </ItemTemplate>

            <ItemTemplate>
              <table>
                    <tr>
                        <td>
                            Recipe Name:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tRecipeName" runat="server" Text='<%# Bind("recipe_name") %>' ReadOnly="True" />    
                        </td>
                        <td class="val">
                        <asp:RequiredFieldValidator ID="recipeName" runat="server" ErrorMessage="Please enter the name of the recipe." CssClass="val" ControlToValidate="tRecipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient 1:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tIngredient1" runat="server" Text='<%# Bind("ingredient1")%>' ReadOnly="True" />    
                        </td>
                        <td class="val">
                        <asp:RequiredFieldValidator ID="ingredient1" runat="server" ErrorMessage="Please enter an ingredient" CssClass="val" ControlToValidate="tIngredient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient 2:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tIngridient2" runat="server" Text='<%# Bind("ingredient2")%>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient 3:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tIngridient3" runat="server" Text='<%# Bind("ingredient3")%>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient 4:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tIngridient4" runat="server" Text='<%# Bind("ingredient4")%>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingridient 5:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tIngredient5" runat="server" Text='<%# Bind("ingredient5")%>' ReadOnly="True" />    
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Preparation:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tPreparation" runat="server" Text='<%# Bind("preparation") %>' ReadOnly="True" />    
                        </td>
                        <td>
                        <asp:RequiredFieldValidator ID="preparation" runat="server" ErrorMessage="Please enter prearation instructions." CssClass="val" ControlToValidate="preparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Submitted By:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tSubmittedBy" runat="server" Text='<%# Bind("submittedBy")%>' ReadOnly="True" />    
                        </td>
                        <td class="val">
                        <asp:RequiredFieldValidator ID="submittedBy" runat="server" ErrorMessage="Please enter who submitted this recipe!" CssClass="val" ControlToValidate="submittedBy"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Notes:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tNotes" runat="server" Text='<%# Bind("notes")%>' ReadOnly="True" />    
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="edit"  runat="server" CausesValidation="false" commandName="Edit" Text="Edit" />  
                        </td>                        
                        <td>
                            <asp:Button ID="delete"  runat="server" CausesValidation="false" commandName="Delete" Text="Delete" />   
                        </td>
                    </tr>
                </table> 
            </ItemTemplate>

        </asp:FormView>
    
        <br />
    
    </div>
    </form>

</body>
</html>
