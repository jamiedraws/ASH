<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
    var version = DtmContext.Version;
    var isIndex = DtmContext.PageCode == "Index";
    var isMobile = DtmContext.IsMobile;
    var isDesktop = !isMobile;
    var cartQuantity = DtmContext.ShoppingCart.Where(sc => sc.CampaignProduct.PropertyIndexer["ExcludeFromCartCount"] != "true").Sum(sc => sc.Quantity);

    var isStartPage = DtmContext.Page.IsStartPageType && DtmContext.PageCode != "PaymentForm";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm" || DtmContext.PageCode == "ProcessPayment";
    var isCustomerService = DtmContext.PageCode == "CustomerService";

    var productAttributeName = SettingsManager.ContextSettings["Label.ProductName"];
    var productName = productAttributeName;

    var ext = DtmContext.ApplicationExtension;
    var cov = String.Format("/{0}/{1}/", DtmContext.OfferCode, DtmContext.Version);

    var hashHome = "#main";
    var linkHome = isIndex ? hashHome : String.Format("{0}Index{1}{2}", cov, ext, hashHome);

    var logo = string.Format(@"
        <picture class=""contain contain--logo"">
            <img src=""/images/logo.svg"" alt=""{0}"">
        </picture>", productAttributeName);

    if (isStartPage)
    {
        logo = string.Format(@"
            <a 
                href=""{0}"" 
                id=""navbar-logo"" 
                class=""nav__logo"" 
                aria-label=""{1}"">
                {2}
            </a>
        ", linkHome, productAttributeName, logo);
    } else
    {
        logo = string.Format(@"
            <div class=""nav__logo"">{0}</div>
        ", logo);
    }

    var implementsSearchUI = false;

    var navClasses = string.Format("nav {0}", isStartPage ? "nav--is-start-page" : "nav--is-end-page");
%>

<header class="view <%= navClasses %> section @print-only-hide">
    <span class="skip-link">
        <a href="#main" class="skip-link__button" id="skip-link"><span>Skip To Main Content?</span></a>
    </span>
    <div class="nav__group nav__in section__contain">
        <%= logo %>
        <% if (isStartPage) { %>
        <input class="nav__toggle" type="checkbox" id="nav__toggle" aria-label="Toggle Menu">
        <label class="nav__label" for="nav__toggle" aria-label="Toggle Menu">
            <span></span>
        </label>
        <div class="nav__underlay nav__underlay--for-drawer" role="presentation"></div>

        <nav aria-label="Website page links" class="nav__pane">
            <div class="nav__group">
                <div class="nav__list">
                    <%
                        var linkCustomerService = isCustomerService ? hashHome : String.Format("{0}CustomerService{1}{2}", cov, ext, hashHome);
                    %>
                    <%= logo.Replace("navbar-logo", "navbar-header-logo") %>
                    <a class="nav__link" href="<%= linkHome %>" id="nav-home">
                        <span>Home</span>
                    </a>
				    <% 
                        var catViewData = new ViewDataDictionary(ViewData);
                        catViewData["ui"] = "dropdown";
                        Html.RenderPartial("ProductCategory", catViewData);
                    %>
                    <a class="nav__link" href="<%= linkCustomerService %>" id="nav-customer-service">
                        <span>Customer Service</span>
                    </a>
                </div>
            </div>
        </nav>

        <nav aria-label="Search for products, account profile and checkout" class="nav__profile">
            <% if (implementsSearchUI) { %>
            <div class="nav__profile">
                <input id="nav__search" type="checkbox" class="nav__toggle" aria-label="Toggle Search"/>
                <label class="circular toggle-icons" for="nav__search">
                    <picture class="toggle-icons__overlay contain contain--icon-search">
                        <img src="/images/icons/search.svg">
                    </picture>
                    <span class="toggle-icons__underlay nav__label nav__label--is-selected">
                        <span></span>
                    </span>
                </label>
                <div class="nav__underlay nav__underlay--for-form">
                    <form action="/Search" data-processing-message="Searching" method="post" onsubmit="return document.getElementById('text').value.replace(/^\s+|\s+$/,'').length != 0;" class="nav__form form form--search">
                        <fieldset class="form__contain form__field-icon">
                             <input id="text" name="text" type="hidden" value="">
                            <input id="versionNumber" name="versionNumber" type="hidden" value="<%=DtmContext.Version.ToString("N4") %>">
                            <input type="text" placeholder="Search..." id="textS" name="textS" onkeyup="document.getElementById('text').value = this.value;" pattern="^[a-zA-Z0-9_ ]*$" class="form__field">
                            <button class="circular"  id="searchSubmit" type="submit">
                                <picture class="contain contain--icon-search">
                                    <img src="/images/icons/search.svg">
                                </picture>
                            </button>        
                        </fieldset>
                    </form>
                </div>
            </div>
            <% } %>
            <a href="#cart" aria-label="Review your shopping cart" class="circular circular--pill nav__icon-text">
                <span class="circular__in">
                    <svg class="icon nav__icon">
                        <use href="#icon-cart"></use>
                    </svg>
                    <span class="nav__text cartTotalQtyNumbersOnly">
                        <% if (cartQuantity > 0) { %>
                            <%= cartQuantity%>
                        <% } %>
                </span>
			</span>
            </a>
        </nav>
        <% } %>
    </div>
</header>