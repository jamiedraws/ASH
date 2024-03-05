<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="ASH.Models" %>
<%
    var v = 1;
    var url = "{0}?v={1}";

    var preload = ViewData["preload"] as bool? ?? false;
    var defer = ViewData["defer"] as bool? ?? false;
    var all = ViewData["all"] as bool? ?? true;

    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isIndex = DtmContext.PageCode == "Index";
    var isFrontPage = DtmContext.Page.IsStartPageType;
    var isLandingPage = isFrontPage && !isPaymentPage && !isIndex;

    var productCategory = ViewData["ProductCategory"] as ProductCategory ??  new ProductCategory();
    var isProductDetailPage = DtmContext.PageCode.Equals(productCategory.PageCode, StringComparison.InvariantCultureIgnoreCase);
    var isWarranty = DtmContext.PageCode == "Warranties";
    var isFAQ = DtmContext.PageCode == "FAQ";

    var pagesRequireConfirmation = new string[] { "ConfirmationReviewPage", "Confirmation" };
    var isConfirmation = pagesRequireConfirmation.Contains(DtmContext.PageCode);

    var pagesRequireFancybox = new string[] { "ShoppingCart" };
    var requireFancybox = pagesRequireFancybox.Contains(DtmContext.PageCode);

    var pagesRequireSlide = new string[] { productCategory.PageCode };
    var requireSlide = pagesRequireSlide.Contains(DtmContext.PageCode) || isFrontPage;

    // inform browser to preload all critical resources ahead of schedule
    if (preload || all)
    {
        // preload critical stylesheets
        var styles = new List<string>
        {
            "/css/ASHPARTS/default/shell.css"
        };

        if (isIndex)
        {
            styles.Add("/css/ASHPARTS/default/index.crp.css");
        }

        if (isLandingPage)
        {
            styles.Add("/css/ASHPARTS/default/landing-page.crp.css");
        }

        if (isProductDetailPage)
        {
            styles.Add("/css/ASHPARTS/default/product-detail-page.crp.css");
        }

        if (isConfirmation)
        {
            styles.Add("/css/ASHPARTS/default/confirmation.css");
        }

        if (isPaymentPage) {
            styles.Add("/css/ASHPARTS/default/payment.css");
        }

        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="preload" href="<%= resource %>" as="style">
            <%
        }

        // preload critical fonts
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
            <link rel="preload" href="<%= font %>" as="font" type="font/woff2" crossorigin>
            <%
        }

        // preload critical scripts
        var scripts = new List<string>
        {

        };

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <link rel="preload" href="<%= resource %>" as="script">
            <%
        }

        // preload critical images
        if (isIndex)
        {
            %>
                <link rel="preload" href="/images/ASHPARTS/hero.jpg" as="image" />
            <%
        }
    }

    // inform browser to request resources on document parse. dispatch as critical resources
    if (!preload && !defer || all)
    {
        // request critical stylesheets
        var styles = new List<string>
        {
            "/css/ASHPARTS/default/shell.css"
        };

        if (isIndex)
        {
            styles.Add("/css/ASHPARTS/default/index.crp.css");
        }

        if (isLandingPage)
        {
            styles.Add("/css/ASHPARTS/default/landing-page.crp.css");
        }

        if (isProductDetailPage)
        {
            styles.Add("/css/ASHPARTS/default/product-detail-page.crp.css");
        }

        if (isConfirmation)
        {
            styles.Add("/css/ASHPARTS/default/confirmation.css");
        }

        if (isPaymentPage) {
            styles.Add("/css/ASHPARTS/default/payment.css");
        }

        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="stylesheet" href="<%= resource %>">
            <%
        }

        // request critical scripts. inform browser to defer script execution to document parse completion
        var scripts = new List<string>
        {
        };

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <script src="<%= resource %>"></script>
            <%
        }
    }

    // inform browser to request resources on document parse. dispatch as deferred resources
    if (!preload && defer || all)
    {
        // request deferred stylesheets
        var styles = new List<string> {

        };

        if (isIndex)
        {
            styles.Add("/css/ASHPARTS/default/index.css");
        }

        if (isLandingPage)
        {
            styles.Add("/css/ASHPARTS/default/landing-page.css");
        }

        if (isFAQ)
        {
            styles.Add("/css/ASHPARTS/default/faq.css");
        }

        if (isWarranty)
        {
            styles.Add("/css/ASHPARTS/default/warranty.css");
        }

        if (isProductDetailPage)
        {
            styles.Add("/css/ASHPARTS/default/product-detail-page.css");
        }

        if (requireFancybox) {
            var lightboxStylesheet = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.Lightbox.Stylesheet", string.Empty];

            if (!string.IsNullOrEmpty(lightboxStylesheet))
            {
                styles.Add(lightboxStylesheet);
                styles.Add("/css/template/fancybox.css");
            }
        }

        foreach (var style in styles)
        {
            var resource = String.Format(url, style, v);
            %>
            <link rel="stylesheet" href="<%= resource %>" media="print" onload="this.media='all'; this.onload=null;">
            <noscript>
                <link rel="stylesheet" href="<%= resource %>">
            </noscript>
            <%
        }


        // request deferred scripts. inform browser to defer script execution to document parse completion
        var scripts = new List<string>
        {
            "/js/ASHPARTS/default/app.js",
            "/js/ASHPARTS/default/observer.js",
            "/js/ASHPARTS/default/lazy.js",
            "/js/ASHPARTS/default/page.js",
            "/js/ASHPARTS/default/nav.js",
            "/Shared/js/ModalMaster/modal.js",
            "/js/ASHPARTS/default/shoppingcart.js"
        };

        if (isFAQ) {
            scripts.Add("/js/ASHPARTS/default/card.js");
        }

        if (requireSlide) {
            scripts.Add("/js/ASHPARTS/default/slide/slide.js");
            scripts.Add("/js/ASHPARTS/default/slide/components/slide.a11y.js");
            scripts.Add("/js/ASHPARTS/default/slide/components/slide.thumbnails.js");
            scripts.Add("/js/ASHPARTS/default/carousel.js");
        }

        if (requireFancybox) {
            var lightboxScript = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.Lightbox.Script", string.Empty];

            if (!string.IsNullOrEmpty(lightboxScript))
            {
                scripts.Add(lightboxScript);
                scripts.Add("/js/ASHPARTS/default/template/fancybox.js");
            }
        }

        foreach (var script in scripts)
        {
            var resource = String.Format(url, script, v);
            %>
            <script defer src="<%= resource %>"></script>
            <%
        }
    }
%>