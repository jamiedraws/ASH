<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var isIndex = DtmContext.PageCode == "Index";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isFrontPage = DtmContext.Page.IsStartPageType && !isPaymentPage;
    var isUpsell = DtmContext.Page.PageType.Equals("Upsell", StringComparison.InvariantCultureIgnoreCase);
    var v = String.Format("?v={0}", 4);
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
