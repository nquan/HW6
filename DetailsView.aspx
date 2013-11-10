<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
</head>
  <link rel="stylesheet" type="text/css" href="style.css"> 
<body>
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <div id="main">
        <h1>Vincent Van Gogh Art Gallery</h1>
    <div id="nav">
     <a href ="Default.aspx">Van Gogh</a> | <a href="DetailsView.aspx">Art Work Search</a> | <a href="Add.aspx">Add What You Know</a> | <a href="Contact.aspx">Contact</a>
    </div>
        <asp:Image class="iris_img" ID="Image1" runat="server" ImageUrl="~/irises.jpg" />
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Website5 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([WorkName], [Type], [CreatedYear], [CurrentLocation], [Description], [Other]) VALUES (@WorkName, @Type, @CreatedYear, @CurrentLocation, @Description, @Other)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [WorkName] = @WorkName, [Type] = @Type, [CreatedYear] = @CreatedYear, [CurrentLocation] = @CurrentLocation, [Description] = @Description, [Other] = @Other WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="WorkName" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="CreatedYear" Type="String" />
                <asp:Parameter Name="CurrentLocation" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Other" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="WorkName" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="CreatedYear" Type="String" />
                <asp:Parameter Name="CurrentLocation" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Other" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        Search for a work by Van Gogh
        <asp:TextBox ID="tbWork" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br />
    
    </div>
        <div id="main2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="219px" Width="856px" BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center">
            <AlternatingRowStyle BorderColor="Black" BorderStyle="Solid" />
            <Columns>
                <asp:BoundField DataField="WorkName" HeaderText="Work Name" SortExpression="WorkName" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="CreatedYear" HeaderText="Created Year" SortExpression="CreatedYear" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="CurrentLocation" HeaderText="Current Location" SortExpression="CurrentLocation" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
                <asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other" >
                <ControlStyle BorderColor="Black" BorderStyle="Solid" />
                <FooterStyle BorderColor="Black" BorderStyle="Solid" />
                <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
                <ItemStyle BorderColor="Black" BorderStyle="Solid" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" />
            <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" />
            <FooterStyle BorderColor="Black" BorderStyle="Solid" />
            <HeaderStyle BorderColor="Black" BorderStyle="Solid" />
            <PagerStyle BorderColor="Black" BorderStyle="Solid" />
            <RowStyle BorderColor="Black" BorderStyle="Solid" />
            <SelectedRowStyle BorderColor="Black" BorderStyle="Solid" />
        </asp:GridView>
            </div>
    </form>
        </div>
</body>
</html>
