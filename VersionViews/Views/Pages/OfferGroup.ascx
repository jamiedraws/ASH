<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var version = DtmContext.Version;
    var modifier = ViewData["modifier"] as string ?? string.Empty;
    var id = ViewData["id"] as string ?? string.Empty;
    var standfirst = ViewData["standfirst"] as string ?? string.Empty;
    var excludeList = ViewData["exclude"] as List<string> ?? new List<string>();

    var productCodeSingle = "MAINA";
    var productCodeMulti = "MAINA";

    // exclude components from rendering
    var excludeBanner = excludeList.Any(el => el.Equals("banner"));
    var excludePayPalDisclaimer = excludeList.Any(el => el.Equals("paypalDisclaimer"));

    var excludeOfferMulti = excludeList.Any(el => el.Equals("offerMulti"));
    var excludeOrderMulti = excludeList.Any(el => el.Equals("orderMulti"));
    var excludeDiscountOfMulti = excludeList.Any(el => el.Equals("discountOfMulti"));

    var excludeOfferSingle = excludeList.Any(el => el.Equals("offerSingle"));
    var excludeOrderSingle = excludeList.Any(el => el.Equals("orderSingle"));
    var excludeDiscountOfSingle = excludeList.Any(el => el.Equals("discountOfSingle"));

    var tvOffer = version == 6;

    var offerSingle = new ViewDataDictionary
    {
        { "productCode", productCodeSingle },
        { "id", id },
        { "excludeDiscountOf", excludeDiscountOfSingle }
    };

    if (!String.IsNullOrEmpty(standfirst))
    {
        offerSingle.Add("standfirst", standfirst);
    }

    if (!excludeBanner && tvOffer)
    {
        offerSingle.Add("type", "tv");
    }

    var multiPaymentInstallment = 6;
    var offerMulti = new ViewDataDictionary
    {
        { "productCode", productCodeMulti },
        { "id", id },
        { "excludeDiscountOf", excludeDiscountOfMulti },
        { "standfirst", String.Format("{0} easy payments of", multiPaymentInstallment) },
        { "paymentInstallment", multiPaymentInstallment }
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
        <% if (!excludeOfferMulti)
            { %>
    <div class="deal__item">
      <div class="deal__offer">
        <%= Html.Partial("OfferSingle", offerMulti) %>
      </div>
            <% if (!excludeOrderMulti)
                { %>
      <div class="deal__order">
        <%= Html.Partial("OrderButton", new ViewDataDictionary { { "id", String.Format("{0}-order-multi", id) } }) %>
      </div>
            <% } %>
         <div class="deal__paypal">
            <span class="paypal-credit-text">with
                <picture style="--arp:300/40">
                    <img src="/images/paypal-credit-alt.svg" alt="PayPal Credit"/>
                </picture>
            </span>
            <% if (!excludePayPalDisclaimer) { %>
            <small class="paypal-disclaimer">
                Subject to credit approval. <br>Minimum purchase required. <a id="paypal-credit-learn-more-hero-link" href="https://paypal.com/us/smarthome" target="_blank">Learn More</a>
            </small>
            <% } %>
         </div>
    </div>
        <% } %>
        <% if (!excludeOfferSingle)
            { %>
    <div class="deal__item">
      <div class="deal__offer">
        <%= Html.Partial("OfferSingle", offerSingle) %>
      </div>
            <% if (!excludeOrderSingle)
                { %>
      <div class="deal__order">
           <%= Html.Partial("OrderButton", new ViewDataDictionary { { "id", String.Format("{0}-order-single", id) } }) %>
      </div>
            <% } %>
    </div>
        <% } %>
  </div>
</div>