<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
    var version = DtmContext.Version;
    var isIndex = DtmContext.PageCode == "Index";
    var isMobile = DtmContext.IsMobile;
    var isDesktop = !isMobile;
    var isStartPage = DtmContext.Page.IsStartPageType && DtmContext.PageCode != "PaymentForm";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var productAttributeName = SettingsManager.ContextSettings["Label.ProductName"];
    var productName = productAttributeName;

    var hashIndex = "#main";
    var hashReviews = "#reviews";
    var hashFAQ = "#faq";
    var hashHow = "#media";

    var linkIndex = isIndex ? hashIndex : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashIndex);
    var linkHow = isIndex ? hashHow : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashIndex);
    var linkReviews = isIndex ? hashReviews : String.Format("Index{0}{1}", DtmContext.ApplicationExtension, hashReviews);
    var linkFAQ = String.Format("FAQ{0}", DtmContext.ApplicationExtension);
    var linkOrder = "#order";

    if (!isStartPage) {
        linkIndex = "#";
    }

    var displayBanner = DtmContext.Page.IsStartPageType && !isPaymentPage;

    if (version == 6) {
      displayBanner = false;
    }

  var logo = String.Format(@"<a href='{0}' id='header-logo' class='header__logo'>
        <picture class='logo__picture' style='--arp: 300/125;'>
          <img src='/images/logo.svg' alt='{1}'>
        </picture>
      </a>", linkIndex, productAttributeName);

  var headerTitle = String.Format(@"For a more secure, convenient, and efficient home");
%>

<header aria-labelledby="header-title" class="view header view--header">
  <div class="view__in">
    <div class="header__group">
      <%= logo %>
      <h1 id="header-title" class="header__title title"><%= headerTitle %></h1>
    </div>
  </div>
</header>

<nav aria-label="Website pages links" class="view nav">
  <% if (displayBanner)
    { %>
  <div class="nav__promo">
    <%= Html.Partial("OfferBanner", new ViewDataDictionary {
        { "type", "countdown" }
    }) %>
  </div>
  <% } %>
  <% logo = logo.Replace("header__logo", "nav__logo").Replace("header-logo", "nav-logo"); %>
  <%= logo %>
  <% if (isStartPage) { %>
  <input class="nav__toggle" type="checkbox" id="nav__toggle" aria-label="Toggle Menu">
  <label class="nav__label" for="nav__toggle" aria-label="Toggle Menu">
    <span></span>
  </label>
  <div class="nav__underlay" role="presentation" aria-label="Hide Menu"></div>
  <% } %>
  <% if (isStartPage) { %>
  <div class="nav__pane">
    <div class="nav__group">
      <div class="nav__list">
        <% logo = logo.Replace("nav-logo", "nav-list-logo"); %>
        <%= logo %>
        <h1 class="nav__title title">
          <%= headerTitle %>
        </h1>
        <a class="nav__link" href="<%= linkIndex %>" id="nav-home">
          <span>Home</span>
        </a>
        <a class="nav__link" href="<%= linkHow %>" id="nav-how">
          <span>How It Works</span>
        </a>
        <a class="nav__link" href="<%= linkFAQ %>" id="nav-faq">
          <span>FAQS</span>
        </a>
        <a class="nav__link" href="<%= linkReviews %>" id="nav-reviews">
          <span>Real Users</span>
        </a>
        <%= Html.Partial("OrderButton", new ViewDataDictionary { { "modifier", "nav__link nav__link--order" }, { "id", "nav-order" } }) %>
        <div class="nav__deal">
		    <%= Html.Partial("OfferGroup", new ViewDataDictionary {
                { "modifier", "deal--nav" },
                { "id", "nav" },
                { "exclude", new List<string> {
				    "banner", "orderMulti"
			    } }
            }) %>
		</div>
      </div>
    </div>
  </div>
  <% } %>
</nav>
<%= Html.Partial("PayPalBanner", new ViewDataDictionary { { "onSiteMessage", true } }) %>