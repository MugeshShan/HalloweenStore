<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="HalloweenStore.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
   <div class="container">
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <main class="row">
        <form id="form1" runat="server">
            <div class="col-xs-12 table-responsive">
                <asp:GridView ID="grdCustomers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-condensed" DataSourceID="SqlDataSource2" OnPreRender="grdCustomers_PreRender" OnSelectedIndexChanged="OnSelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Id" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName">
                        <ItemStyle CssClass="col-xs-3" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName">
                        <ItemStyle CssClass="col-xs-3" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="State" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" Visible="false">
                            <ItemTemplate>
                                <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
<%--                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State,City">
                        <ItemStyle CssClass="col-xs-2" />
                        </asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City">
                        <ItemStyle CssClass="col-xs-4" />
                        </asp:BoundField>--%>
                        <asp:ButtonField Text="Select" CommandName="Select" />
                        
                    </Columns>

                    <HeaderStyle CssClass="bg-halloween" />
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <PagerStyle BackColor="#8C8C8C" CssClass="pagerStyle" HorizontalAlign="Center" />
                </asp:GridView>
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HalloweenConnection %>" SelectCommand="SELECT [Id], [LastName], [FirstName], [State], [City], [Phone] FROM [Customers] ORDER BY [LastName]"></asp:SqlDataSource>
               <br />
        <u>Selected Row:</u>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" HeaderStyle-Font-Bold="true" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" HeaderStyle-Font-Bold="true" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" HeaderStyle-Font-Bold="true" />
            <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-Font-Bold="true" />
            <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-Font-Bold="true" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" HeaderStyle-Font-Bold="true" />
        </Fields>
        </asp:DetailsView>
            </div> 
            <div class="buttons">
                <asp:Button ID="Button3" class="button3" runat="server" Text="Back" OnClick="Button3_Click" /> 
            </div>
        </form>
        
    </main>
</div>
</body>
</html>
