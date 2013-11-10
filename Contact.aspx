<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <form id="form1" runat="server">
    <div>
        <br /><br />
        <br /><br />
        <div id="email">Your Email Address:</div>
        <br />

                   <br />
                   <asp:TextBox ID="addressTextBox" runat="server" Height="30px" Width="236px"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <br />
                   <br />
                   <div id="message">Your Message:</div><br />
                   <br />
                   <asp:TextBox ID="messageTextBox" runat="server" Height="63px" Width="398px"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <br />
                   <a href="nayong-quan@uiowa.com"><asp:Button ID="Button1" runat="server" Text="Send Message" /></a>
                   <br />

    </div>
    </form>
</body>
</html>
