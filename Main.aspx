<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HalloweenStore.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title>Main Page</title>
</head>
<body>
     <div class="container">
        <header class="jumbotron">
            <%-- image set in site.css --%>
        </header>
    </div>
    <form id="form1" runat="server">
        <div class="buttons">
            <asp:Button ID="Button1" class="button1" runat="server" Text="Customer Details" OnClick="Button2_Click" /> 
            <asp:Button ID="Button2" class="button2" runat="server" Text="Invoice Details" OnClick="Button1_Click" /> 
        </div>
    </form>
</body>
</html>
