<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var isIndex = DtmContext.PageCode == "Index";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isFrontPage = DtmContext.Page.IsStartPageType && !isPaymentPage;
    var isUpsell = DtmContext.Page.PageType.Equals("Upsell", StringComparison.InvariantCultureIgnoreCase);
    var v = String.Format("?v={0}", 6);
%>

<footer data-eflex-footer-custom aria-label="Copyrights and policies" class="view view--footer footer">
    <div class="view__in">

        <% if (isFrontPage)
            {
        %>
        <div id="order" class="footer__disclaimer">
            <% Html.RenderSnippet("OFFERDETAILS");

                if (!string.Equals(DtmContext.PageCode, "PaymentForm", StringComparison.InvariantCultureIgnoreCase))
                {
                    using (Html.BeginForm())
                    {

                        Html.RenderSnippet("PRODUCTSELECTION");
                    }
                }
            %>
        </div>
        <p>Looking for individual items from this kit? <a href="https://www.getalexastarterkit.com/?mid=11825724" id="kit-to-parts-link" target="_blank">Click here to visit the Alexa Smart Home Store.</a></p>
        <%
                Html.RenderSnippet("FOOTER-FRONTEND");
            }
            else
            {
                Html.RenderSnippet("COMMON-FOOTER");
            }
        %>
    </div>

    <%
        if (isFrontPage)
        {
            Html.RenderPartial("Scripts");
            Html.RenderSnippet("ORDERFORMSCRIPT");
            %>
            <script>
                $(document).ready(function () {
                    const $submit = $("#AcceptOfferButton");
                    $('a[href="#order"]').on("click", function (evt) {
                        evt.preventDefault();
                        $submit.trigger("click");
                    });
                 });
            </script>
            <%
        }
    %>

    <script defer src="/js/4.0000/page.js<%= v %>"></script>
    <script defer src="/js/nav.js<%= v %>"></script>

    <%
        if (isIndex || isPaymentPage)
        {
            Html.RenderPartial("PayPalBanner", new ViewDataDictionary { { "loadScripts", true } });
        }
    %>

    <div class="l-controls top-absolute">
        <% Html.RenderSiteControls(SiteControlLocation.ContentTop); %>
        <% Html.RenderSiteControls(SiteControlLocation.ContentBottom); %>
        <% Html.RenderSiteControls(SiteControlLocation.PageBottom); %>
    </div>
</footer>
