Partial Class RecipeDetails

    Inherits System.Web.UI.Page

    Protected Sub FormView2_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView2.ItemDeleted
        Dim deletedRecipe As String = e.Values("recipeName").ToString()
        lbl_deletedRecipe.Text = deletedRecipe & "has been deleted from database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub FormView2_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView2.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class