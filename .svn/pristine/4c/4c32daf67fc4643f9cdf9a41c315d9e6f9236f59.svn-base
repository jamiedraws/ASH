using Dtm.Framework.ClientSites.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ASH
{
    public class MvcApplication : ClientSiteApplication
    {
        protected override void ConfigureAdditionalRoutes(RouteCollection routes)
        {

            routes.MapRoute("ViewProductDetails", "ProductDetails", new
            {
                controller = "ProductDetails",
                action = "RenderProductDetails",
                pageCode = "none"
            });

            base.ConfigureAdditionalRoutes(routes);
        }
    }
}