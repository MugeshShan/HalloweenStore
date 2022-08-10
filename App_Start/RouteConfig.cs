using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace HalloweenStore
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "HomeRoute",
                "Main",
                "~/Main.aspx"
            );
            routes.MapPageRoute(
                "InvoicesRoute",
                "Invoice",
                "~/Invoices.aspx"
            );
            routes.MapPageRoute(
                "CustomerRoute",
                "Customer",
                "~/Customer.aspx"
            );
        }
    }
}
