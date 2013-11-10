
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub tbWork_TextChanged(sender As Object, e As EventArgs) Handles tbWork.TextChanged
        Dim searchWork As String
        searchWork = "Select * From Table where (WorkName Like '%" _
+ tbWork.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWork
    End Sub
End Class
