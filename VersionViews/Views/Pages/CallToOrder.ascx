<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Dtm.Framework.ClientSites.Web.ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var domain = DtmContext.Domain.Domain;
    var page = DtmContext.PageCode;
    var id = ViewData["id"] as string ?? string.Empty;
    var excludeId = ViewData["excludeId"] as string ?? string.Empty;

    var callToOrderGroup = new Dictionary<string, Dictionary<string, List<string>>>
    {
        {
            "www.AlexaSmartHomeTVoffer.com",
            new Dictionary<string, List<string>>
            {
                {
                    "800-761-2854", new List<string>
                    {
                        "CustomerService|OfferDetails"
                    }
                }
            }
        },
        {
            "www.BuyAlexaStarterKit.com",
            new Dictionary<string, List<string>>
            {
                {
                    "800-761-2839", new List<string>
                    {
                        "CustomerService",
                        "ShippingPolicy",
                        "FAQ",
                        "Warranties",
                        "PrivacyPolicy",
                        "ReturnPolicy",
                        "Sitemap",
                        "Index"
                    }
                }
            }
        }
    };

    var response = string.Empty;

    foreach (var callToOrderItem in callToOrderGroup)
    {
        var hasDomain = String.Equals(callToOrderItem.Key, domain, StringComparison.InvariantCultureIgnoreCase);

        if (hasDomain)
        {
            foreach (var callToOrder in callToOrderItem.Value)
            {
                var phone = callToOrder.Key ?? string.Empty;
                var pages = callToOrder.Value ?? new List<string>();
                var pageInfo = pages.Where(p => p.StartsWith(page));

                if (pageInfo.Any())
                {
                    var include = !String.IsNullOrEmpty(excludeId) ? pageInfo.Any(p => !p.EndsWith(excludeId)) : true;

                    if (include)
                    {
                        response = String.Format(@"<p class='call-to-order'>
                            <span>TO PLACE AN ORDER BY PHONE:</span>
                            <a href='tel:{0}' id='call-to-order-number-{1}' aria-label='Order by phone'>{0}</a>
                            <small>Please note payment installations through PayPal Credit are not available for orders placed by phone.</small>
                        </p>", phone, id);
                    }
                }
            }
        }
    }
%>

<%= response %>