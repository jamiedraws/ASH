<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Dtm.Framework.ClientSites.Web.ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var showPayPalLearnMore = DtmContext.Version >= 6;
    var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true];
%>

<% if (isTakingOrders) { %>
<section aria-labelledby="offer-title" class="view view--content offer-card">
    <div id="order" class="view__anchor"></div>
    <div class="copy copy--display offer-card__banner">
        <h2>This offer is not available in stores</h2>
    </div>
    <%= Html.Partial("PayPalBanner", new ViewDataDictionary { { "onSiteMessage", true } }) %>
    <div class="view__in copy copy--display">
        <h2 id="offer-title">Choose your package:</h2>

        <div class="offer-card__group" data-toggle-container="TVOFFER">
            <div class="offer-card__item">
                <h3 class="offer-card__header">TV Offer</h3>
                <div class="offer-card__picture">
                    <%
                        var offerTVAlt = "TV offer with Echo Show 5 with Alexa, 2 Philips Hue Smart Lights, Ring Video Doorbell, Ring Indoor Camera and 1 bonus Amazon Smart Plug";
                    %>
                    <picture style="--arp:515/380" data-src-img="/images/offer-tv.jpg" data-tag='{ "source" : [{ "srcset" : "/images/offer-tv.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/offer-tv.jpg", "alt" : "<%= offerTVAlt %>" }] }'>
                        <noscript>
                            <source srcset="/images/offer-tv.webp" type="image/webp"/>
                            <img src="/images/offer-tv.jpg" alt="<%= offerTVAlt %>" />
                        </noscript>
                    </picture>
                </div>
                <div class="offer-card__list addons copy" data-toggle-listener="TVOFFER">
                    <div class="addons__in">
                        <div class="addons__title">Includes:</div>
                        <ul class="addons__list">
                            <li>Echo Show 5 with Alexa</li>
                            <li>2 Philips Hue Smart Lights (White Ambiance)</li>
                            <li>Ring Video Doorbell</li>
                            <li>Ring Indoor Camera</li>
                        </ul>
                        <div class="addons__title">Bonus Item:</div>
                        <ul class="addons__list">
                            <li>Amazon Smart Plug ($24.99 Value)</li>
                        </ul>
                    </div>
                </div>
                <div class="offer-card__price">
                    <span class="paypal-credit-text">$199.98 or 6 monthly payments of $33.33 with
                        <picture style="--arp:300/40">
                            <img src="/images/paypal-credit-alt.svg" alt="PayPal Credit"/>
                        </picture>
                        <% if (showPayPalLearnMore) { %>
                        <small><a id="paypal-credit-learn-more-tv-link" href="https://paypal.com/us/smarthome" target="_blank">Learn More</a></small>
                        <% } %>
                    </span>
                </div>
                <nav class="offer-card__nav">
                    <button type="button" class="button button--accent" data-toggle-actor="TVOFFER">View Details</button>
                    <a aria-label="Order the TV offer" href="#order" data-code="MAINA2" class="button">
                        <span>Add To Cart</span>
                    </a>
                </nav>
            </div>
            <div class="offer-card__item offer-card__highlight" data-toggle-container="DELUXE">
                <h3 class="offer-card__header">Upgraded Deluxe Kit</h3>
                <div class="offer-card__picture">
                    <%
                        var offerDeluxeAlt = "Deluxe offer with Echo Show 8 with Alexa, 2 Philips Hue Smart Lights, 2 Bonus Amazon Smart Plugs, Ring Video Doorbell and Ring Indoor Camera";
                    %>
                    <picture style="--arp:515/380" data-src-img="images/offer-deluxe.jpg" data-tag='{ "source" : [{ "srcset" : "/images/offer-deluxe.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/offer-deluxe.jpg", "alt" : "<%= offerDeluxeAlt %>" }] }'>
                        <noscript>
                            <source srcset="/images/offer-deluxe.webp" type="image/webp" />
                            <img src="/images/offer-deluxe.jpg" alt="<%= offerDeluxeAlt %>" />
                        </noscript>
                    </picture>
                </div>
                <div class="offer-card__list addons copy" data-toggle-listener="DELUXE">
                    <div class="addons__in">
                        <div class="addons__title">Includes:</div>
                        <ul class="addons__list">
                            <li>
                                <span>Echo Show 8 with Alexa</span>
                                <ul class="addons__list addons__sub-list">
                                    <li>Large touch screen: 8.0" with 1280 x 800p resolution</li>
                                    <li>Enhanced sound: 2 x 2.0" @ 10W per channel</li>
                                </ul>
                            </li>
                            <li>2 Philips Hue Smart Lights (White Ambiance)</li>
                            <li>Ring Video Doorbell</li>
                            <li>Ring Indoor Camera</li>
                        </ul>
                        <div class="addons__title">Bonus Item:</div>
                        <ul class="addons__list">
                            <li>(2) Amazon Smart Plugs ($49.98 Value)</li>
                        </ul>
                    </div>
                </div>
                <div class="offer-card__price">
                    <span class="paypal-credit-text">$249.96 or 6 monthly payments of $41.66 with
                        <picture style="--arp:300/40">
                            <img src="/images/paypal-credit-alt.svg" alt="PayPal Credit"/>
                        </picture>
                        <% if (showPayPalLearnMore) { %>
                        <small><a id="paypal-credit-learn-more-upgrade-link" href="https://paypal.com/us/smarthome" target="_blank">Learn More</a></small>
                        <% } %>
                    </span>
                </div>
                <nav class="offer-card__nav">
                    <button type="button" class="button button--accent" data-toggle-actor="DELUXE">View Details</button>
                    <a aria-label="Order the deluxe kit" href="#order" data-code="MAINUP" class="button">
                        <span>Add To Cart</span>
                    </a>
                </nav>
            </div>
        </div>
    </div>
    <noscript>
        <style>
            .offer-card__nav > .button--accent {
                display: none;
            }
        </style>
    </noscript>
</section>
<% } %>