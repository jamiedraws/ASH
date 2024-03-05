<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var version = DtmContext.Version;
    var modifier = ViewData["modifier"] as string ?? string.Empty;
    var id = ViewData["id"] as string ?? string.Empty;
    var standfirst = ViewData["standfirst"] as string ?? "Now Only";
    var excludeList = ViewData["exclude"] as List<string> ?? new List<string>();

    var productCodeSingle = "MAINDOWN";

    // exclude components from rendering
    var excludeBanner = excludeList.Any(el => el.Equals("banner"));

    var excludeOfferSingle = excludeList.Any(el => el.Equals("offerSingle"));
    var excludeOrderSingle = excludeList.Any(el => el.Equals("orderSingle"));
    var excludeDiscountOfSingle = excludeList.Any(el => el.Equals("discountOfSingle"));

    var offerSingle = new ViewDataDictionary
    {
        { "standfirst", standfirst },
        { "productCode", productCodeSingle },
        { "id", id },
        { "excludeDiscountOf", excludeDiscountOfSingle },
        { "type", "tv" }
    };
%>
<div class="deal <%= modifier %>">
    <%
        if (!excludeBanner)
        {
            Html.RenderPartial("OfferBanner", offerSingle);
        }
    %>
    <div class="deal__group">
    <% if (!excludeOfferSingle) { %>
        <div class="deal__item">
            <div class="deal__offer">
                <%= Html.Partial("OfferSingle", offerSingle) %>
            </div>
            <% if (!excludeOrderSingle) { %>
            <div class="deal__order">
                <%= Html.Partial("OrderButton", new ViewDataDictionary { { "id", String.Format("{0}-order-single", id) } }) %>
            </div>
             <% } %>
        </div>
        <% } %>
    </div>
</div>