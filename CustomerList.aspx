<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="HalloweenStore.CustomerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer List View</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Scripts/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <form id="form1" runat="server">
        <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>
    <div class="newBox">
    <table cellpadding="0" cellspacing="0" align="center">
        <tr>
            <th>
                Id
            </th>
            <th>
                FirstName
            </th>
            <th>
                LastName
            </th>
            <th>
                State
            </th>
            <th>
                City
            </th>
            <th>
                Phone
            </th>
        </tr>
        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
    </table>
        </div>
</LayoutTemplate>
<GroupTemplate>
    <tr>
        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
    </tr>
</GroupTemplate>
<ItemTemplate>
    <td>
        <%# Eval("Id") %>
    </td>
    <td>
        <%# Eval("FirstName") %>
    </td>
    <td>
        <%# Eval("LastName") %>
    </td>
    <td>
        <%# Eval("State") %>
    </td>
    <td>
        <%# Eval("City") %>
    </td>
    <td>
        <%# Eval("Phone") %>
    </td>
</ItemTemplate>
</asp:ListView>
         <div class="buttons">
                <asp:Button ID="Button3" class="button3" runat="server" Text="Back" OnClick="Button3_Click" /> 
            </div>
    </form>
</body>
</html>
