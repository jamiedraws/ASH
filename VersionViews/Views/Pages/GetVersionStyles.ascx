<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var v = String.Format("?v={0}", 27);
    var preload = ViewData["preload"] as bool? ?? false;
    var version = DtmContext.Version;
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isFrontPage = DtmContext.Page.IsStartPageType && !isPaymentPage;
    var isIndex = DtmContext.PageCode == "Index";
    var isReviewPage = DtmContext.PageCode == "ReviewPage";
    var isUpsell = DtmContext.Page.PageType.Equals("Upsell", StringComparison.InvariantCultureIgnoreCase) || isReviewPage;
    var isConfirmation = DtmContext.Page.PageType == "Confirmation";
    var isFAQ = DtmContext.PageCode == "FAQ";

    var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true];

    if (preload)
    {
        var fonts = new List<string>
        {
            "/fonts/amazonember_rg-webfont.woff2",
            "/fonts/amazonember_bd-webfont.woff2",
            "/fonts/amazonember_lt-webfont.woff2",
            "/shared/webfonts/helvetica-neue/bold/HelveticaNeue-Bold.woff2"
        };

        foreach (var font in fonts)
        {
            %>
            <link rel="preload" href="<%= font %>" as="font" type="font/woff2" crossorigin="">
            <%
                }

                if (isIndex)
                {
                    if (version < 3) {
                    %>
            <link rel="preload" href="/images/bg--offer.jpg" as="image" imagesrcset="/images/bg--offer.webp, /images/bg--offer.jpg" />
            <link rel="preload" href="/images/all-products.png" as="image" imagesrcset="/images/all-products.webp, /images/all-products.png">
                    <%
                                } else
                                {
                                    %>
            <link rel="preload" href="/images/carousels/products/landscape/slide-1.jpg" as="image" imagesrcset="/images/carousels/products/landscape/slide-1.webp, /images/carousels/products/landscape/slide-1.jpg" />
<%
            }
        }
    }

    var link = "<link rel='stylesheet' href='{0}.css{1}'>";
    if (preload)
    {
        link = "<link rel='preload' href='{0}.css{1}' as='style'>";
    }

    var stylesheets = new List<string> { "/css/1.0000/header" };

    if (isIndex)
    {
        stylesheets.Add("/css/slide/slide");
        stylesheets.Add("/css/slide/slide.thumbnails");
        stylesheets.Add(String.Format("/css/{0}/index", version));
        if (version > 2)
        {
            stylesheets.Add("/css/carousel");
        }
    }
    else if (isPaymentPage)
    {
        stylesheets.Add("/css/1.0000/payment");
    }
    else
    {
        stylesheets.Add(String.Format("/css/{0}/style", version));
    }

    if (!isTakingOrders)
    {
        stylesheets.Add("/css/states/oos");
    }

    if (!isFrontPage && !isPaymentPage)
    {
        stylesheets.Add("/css/1.0000/upsell");
    }

    if (isFAQ)
    {
       stylesheets.Add("/css/1.0000/faq");
    }

    foreach (var stylesheet in stylesheets)
    {
    %>
        <%= String.Format(link, stylesheet, v) %>
    <%
    }
%>

<% if (!preload)
    { %>
<script defer src="/js/app.js<%= v %>"></script>
<script defer src="/js/observer.js<%= v %>"></script>
<script defer src="/js/lazy.js<%= v %>"></script>
<% } %>