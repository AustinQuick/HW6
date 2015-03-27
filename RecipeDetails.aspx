﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

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
        <a href="AboutUs.aspx" style="color: #696969">About Us</a>&nbsp; | &nbsp;
        <a href="ContactUs.aspx" style="color: #696969">Contact Us</a>&nbsp; |&nbsp

        <br />

      <asp:SqlDataSource ID="sql_RecipeDetails" runat="server" ConnectionString="<%$ 
            ConnectionStrings:AMQuick_HW6 %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE 
            [recipeID] = @recipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], 
            [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5],
             [preparation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, 
            @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * 
            FROM [AMQuick_HW6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [AMQuick_HW6] SET 
            [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, 
            [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, 
            [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] 
            = @recipeID">                  
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

           <SelectParameters>
                <asp:QueryStringParameter Name="RecipeID" QueryStringField="RecipeID" Type="Int32" />
            </SelectParameters>

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
          <br />
        <asp:Label ID="lbldeletedrecipe" runat="server"></asp:Label>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="sql_RecipeDetails" Height="250px" Width="600px" HorizontalAlign="Center">
            <EditItemTemplate>
                            recipeID:
                            <asp:TextBox ID="recipeIDTextBox" runat="server" Text='<%# Bind("recipeID")%>' />
                            <br />
                            recipeName:
                            <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName")%>' />
                            <br />
                            submittedBy:
                            <asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy")%>' />
                            <br />
                            ingredient1:
                            <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1")%>' />
                            <br />
                            ingredient2:
                            <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2")%>' />
                            <br />
                            ingredient3:
                            <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3")%>' />
                            <br />
                            ingredient4:
                            <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4")%>' />
                            <br />
                            ingredient5:
                            <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                            <br />
                            preparation:
                            <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation")%>' />
                            <br />
                            notes:
                            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            </EditItemTemplate>
            
            <InsertItemTemplate>
                recipeID:
                <asp:TextBox ID="recipeIDTextBox" runat="server" Text='<%# Bind("recipeID") %>' />
                <br />
                recipeName:
                <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName") %>' />
                <br />
                submittedBy:
                <asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy") %>' />
                <br />
                ingredient1:
                <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation")%>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            
            <ItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel" runat="server" Text='<%# Bind("recipeID") %>' />
                <br />
                recipeName:
                <asp:Label ID="recipeNameLabel" runat="server" Text='<%# Bind("recipeName") %>' />
                <br />
                submittedBy:
                <asp:Label ID="submittedByLabel" runat="server" Text='<%# Bind("submittedBy") %>' />
                <br />
                ingredient1:
                <asp:Label ID="ingredient1Label" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:Label ID="ingredient2Label" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:Label ID="ingredient3Label" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:Label ID="ingredient4Label" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:Label ID="ingredient5Label" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation")%>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>

            <ItemTemplate>
              <table>
                    <tr>
                        <td>
                            Recipe Name:    
                        </td>                        
                        <td>
                            <asp:TextBox ID="tRecipeName" runat="server" Text='<%# Bind("recipename") %>' ReadOnly="True" />    
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
