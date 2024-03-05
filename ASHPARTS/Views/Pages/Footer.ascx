<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var isIndex = DtmContext.PageCode == "Index";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isFrontPage = DtmContext.Page.IsStartPageType && !isPaymentPage;
    var isUpsell = DtmContext.Page.PageType.Equals("Upsell", StringComparison.InvariantCultureIgnoreCase);
    var v = String.Format("?v={0}", 0);
%>

<footer data-eflex-footer-custom aria-label="Copyrights and policies" class="view footer section bg bg--dark">
    <div class="view__in section__in">

        <% if (isFrontPage)
            {
        %>
        <div id="order" class="footer__disclaimer">
            <% Html.RenderSnippet("OFFERDETAILS");

                if (!string.Equals(DtmContext.PageCode, "PaymentForm", StringComparison.InvariantCultureIgnoreCase))
                {
                    //using (Html.BeginForm())
                    //{

                    //    Html.RenderSnippet("PRODUCTSELECTION");
                    //}
            %>
            <noscript>
                <style>
                    .footer form {
                        display: block;
                    }
                </style>
            </noscript>
            <%
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
</footer>
