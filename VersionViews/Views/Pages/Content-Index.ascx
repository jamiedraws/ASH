<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var ext = DtmContext.ApplicationExtension;
    var version = DtmContext.Version;
    var isMobile = DtmContext.IsMobile;
    var isDesktop = !isMobile;

    var productAttributeName = SettingsManager.ContextSettings["Label.ProductName"];
    var productName = productAttributeName;

    var digitalRiverDisclaimerLink = SettingsManager.ContextSettings["DigitalRiver.CompanyDisclaimer"];

    var tvOffer = version >= 6;
%>

<main aria-label="Offer" class="view view--observe hero">
    <div id="main" class="view__anchor"></div>
    <div class="view__in hero__in">
        <h2 class="hero__title">Customers have now connected tens of millions of smart home devices to Alexa</h2>

        <%
            var productCarousel = new SortedList<string, SortedList<string, string>>
            {
                {
                    "product-carousel-item1",
                    new SortedList<string, string>
                    {
                        { "Alexa Smart Home Starter Kit displayed on a kitchen counter", "slide-1" }
                    }
                },
                {
                    "product-carousel-item2",
                    new SortedList<string, string>
                    {
                        { "Display of Echo Show 5 with Alexa on the kitchen counter", "slide-2" }
                    }
                },
                {
                    "product-carousel-item3",
                    new SortedList<string, string>
                    {
                        { "Display of Ring Indoor Camera and Video Doorbell and how it can work with Echo Show 5 with Alexa", "slide-3" }
                    }
                }
            };
        %>

        <div class="slide slide--no-scrollbar picture-carousel">
            <div class="picture-carousel__in">
                <div id="product-carousel" class="slide__into picture-carousel__into" tabindex="0" data-slide-config='{ "auto" : true, "delay" : 8000 }'>
                    <%
                        foreach (var carouselItem in productCarousel)
                        {
                            var id = carouselItem.Key ?? string.Empty;

                            foreach (var carouselImage in carouselItem.Value)
                            {
                                var title = carouselImage.Key ?? string.Empty;
                                var name = carouselImage.Value ?? string.Empty;
                                var jpeg = String.Format("{0}{1}", name, ".jpg");
                                var webp = String.Format("{0}{1}", name, ".webp");
                                var index = productCarousel.IndexOfKey(id);

                                if (index == 0)
                                {
                                    %>
                                    <picture class="slide__item picture-carousel__item" id="<%= id %>">
                                        <source srcset="/images/carousels/products/square/<%= webp %>" type="image/webp" media="(max-width: 640px)">
                                        <source srcset="/images/carousels/products/landscape/<%= webp %>" type="image/webp" media="(min-width: 640px)">
                                        <source srcset="/images/carousels/products/square/<%= jpeg %>" type="image/jpeg" media="(max-width: 640px)">
                                        <source srcset="/images/carousels/products/landscape/<%= jpeg %>" type="image/jpeg" media="(min-width: 640px)">
                                        <img src="/images/carousels/products/landscape/<%= jpeg %>" alt="<%= title %>">
                                    </picture>
                                    <%
                                } else
                                {
                                    %>
                                    <picture class="slide__item picture-carousel__item" id="<%= id %>" data-src-img="/images/carousels/products/<%= jpeg %>" data-tag='{ "source" : [{ "srcset" : "/images/carousels/products/square/<%= webp %>", "type" : "image/webp", "media" : "(max-width: 640px)" }, { "srcset" : "/images/carousels/products/landscape/<%= webp %>", "type" : "image/webp", "media" : "(min-width: 640px)"}, { "srcset" : "/images/carousels/products/square/<%= jpeg %>", "type" : "image/jpeg", "media" : "(max-width: 640px)" }, { "srcset" : "/images/carousels/products/landscape/<%= jpeg %>", "type" : "image/jpeg", "media" : "(min-width: 640px)" }], "img" : [{ "src" : "/images/carousels/products/landscape/<%= jpeg %>", "alt" : "<%= title %>" }] }' data-attr='{ "alt" : "<%= title %>" }'>
                                        <noscript>
                                            <source srcset="/images/carousels/products/square/<%= webp %>" type="image/webp" media="(max-width: 640px)">
                                            <source srcset="/images/carousels/products/landscape/<%= webp %>" type="image/webp" media="(min-width: 640px)">
                                            <source srcset="/images/carousels/products/square/<%= jpeg %>" type="image/jpeg" media="(max-width: 640px)">
                                            <source srcset="/images/carousels/products/landscape/<%= jpeg %>" type="image/jpeg" media="(min-width: 640px)">
                                            <img src="/images/carousels/products/landscape/<%= jpeg %>" alt="<%= title %>">
                                        </noscript>
                                    </picture>
                                    <%
                                }
                            }
                        }
                    %>
                </div>
                <nav aria-label="Reviews previous and next slides" class="slide__nav picture-carousel__nav">
                    <button
                        id="slide-prev"
                        aria-label="Select the previous slide"
                        class="slide__prev picture-carousel__prev"
                        type="button"
                    >
                        <span class="icon-chevron-thin-left"></span>
                    </button>
                    <button
                        id="slide-next"
                        aria-label="Select the next slide"
                        class="slide__next picture-carousel__next"
                        type="button"
                    >
                        <span class="icon-chevron-thin-right"></span>
                    </button>
                </nav>
                <%
                    var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true];

                    if (!isTakingOrders)
                    {
                        %>
                        <span class="oos">
                            Offer No Longer Available
                        </span>
                        <%
                    }
                %>
            </div>
            <nav aria-label="Product thumbnail" class="slide__thumbnails picture-carousel__thumbnails">
            <%

                foreach (var carouselItem in productCarousel)
                {
                    var id = carouselItem.Key ?? string.Empty;

                    foreach (var carouselThumbnail in carouselItem.Value)
                    {
                        var classes = "slide__thumbnail";
                        var index = productCarousel.IndexOfKey(id);
                        if (index == 0)
                        {
                            classes = String.Format("{0} {1}", classes, "slide__thumbnail--is-selected");
                        }
                        %>
                        <a href="#<%= id %>" class="<%= classes %>" data-slide-index="<%= index %>" aria-label="Review"></a>
                        <%
                    }
                }
            %>
            </nav>
        </div>

        <div class="hero__group">
            <div class="hero__products-burst">
                <span class="hero__burst">
                    $319.95 Value!
                </span>
                <div class="hero__products">
                    <% if (tvOffer) { %>
                    <%= Html.Partial("OfferGroup", new ViewDataDictionary {
                        { "modifier", "deal--hero" },
                        { "id", "hero" },
                        { "exclude", new List<string> {
                            "orderSingle",
                            "orderMulti"
                        } }
                    }) %>
                    <% } else { %>
                    <%= Html.Partial("OfferGroup", new ViewDataDictionary {
                        { "modifier", "deal--hero" },
                        { "id", "hero" },
                        { "exclude", new List<string> {
                            "banner",
                            "paypalDisclaimer",
                            "orderSingle",
                            "orderMulti"
                        } }
                    }) %>
                    <% } %>
                    <strong class="hero__shipping bold">+FREE SHIPPING!</strong>
                </div>
            </div>
            <div class="hero__addons addons addons--expand copy">
                <div class="addons__in">
                    <h2 class="addons__title uppercase"><span>Alexa Smart</span> <span>Home Starter Kit</span></h2>
                    <div class="addons__item">
                        <div class="addons__title">Includes:</div>
                        <ul class="addons__list">
                          <li>Echo Show 5 with Alexa</li>
                          <li>2 Philips Hue Smart Lights <br>(White Ambiance)</li>
                          <li>Ring Video Doorbell</li>
                          <li>Ring Indoor Camera</li>
                        </ul>
                    </div>
                    <div class="addons__item">
                        <div class="addons__title">Bonus Item:</div>
                        <ul class="addons__list addons__list--single">
                            <li class="addons__group">
                                <span>Amazon Smart Plug<br /><strong>($24.99 Value)</strong></span>
                                <picture class="hero__mbg" style="--arp:163/190;--arp-max:163px;" data-src-img="/images/mbg.png" data-attr='{ "alt" : "30 day money back guarantee" }'>
                                    <noscript>
                                        <img src="/images/mbg.png" alt="30 day money back guarantee">
                                    </noscript>
                                </picture>
                            </li>
                        </ul>
                        <%= Html.Partial("OrderButton", new ViewDataDictionary { { "modifier", "button addons__button" }, { "id", "hero-order" } }) %>
                    </div>
                </div>
            </div>
        </div>
        <span class="hero__disclaimer"><%= digitalRiverDisclaimerLink %></span>
    </div>
    <%= Html.Partial("PayPalBanner") %>
</main>

<section aria-labelledby="media-title" class="view view--content view--grid media">
    <div id="media" class="view__anchor"></div>
    <div class="view__in copy">
        <% if (!tvOffer) { %>
        <h2 id="media-title">Customers use Alexa to control smart home devices hundreds of millions of times each week</h2>
        <% } %>
        <div class="media__group">
            <%= Html.Partial("Video") %>
            <div class="media__item media__copy copy">
                <h2>Features & Benefits</h2>
                <ul>
                    <li><strong>Added security:</strong> Remotely monitor in and around your home for extra peace of mind</li>
                    <li><strong>Endless entertainment:</strong> Ask Alexa to play music, tell a joke, call Grandma, and more</li>
                    <li><strong>Hands Free Convenience:</strong> Control connected devices with your voice</li>
                    <li><strong>Create Routines:</strong> Create custom routines to control multiple devices with a single phrase</li>
                    <li><strong>Easy to set up:</strong> It takes only a few minutes to get started</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<section aria-labelledby="product-title" class="view view--bg view--content view--product view--grid view--observe">
    <div id="product" class="view__anchor"></div>
    <div class="view__in">
        <div class="copy copy--title">
            <h2 id="product-title">Featured products in your smart home kit</h2>

            <figure class="copy__group copy--content product product--group">
                <div class="product product--figure copy__item">
                    <div class="product__picture slide">
                        <%= Html.Partial("_Perks", new ViewDataDictionary { { "applyPictures", true } }) %>
                        <%= Html.Partial("_Perks", new ViewDataDictionary { { "applyButtons", true } }) %>
                    </div>
                </div>
                <div class="product product--list copy__item">
                    <%= Html.Partial("_Perks", new ViewDataDictionary { { "applyDetails", true } }) %>
                    <%= Html.Partial("OrderButton", new ViewDataDictionary { { "text", "Click Here To Order Now" }, { "id", "product-order" } }) %>
                </div>
            </figure>

            <div class="logo-farm">
                <picture style="--arp:1/1" data-src-img="/images/logo--echo.svg" data-attr='{ "alt" : "Echo" }'>
                    <noscript>
                        <img src="/images/logo--echo.svg" alt="Echo" />
                    </noscript>
                </picture>
                <picture style="--arp:1/1" data-src-img="/images/logo--ring.svg" data-attr='{ "alt" : "Ring" }'>
                    <noscript>
                        <img src="/images/logo--ring.svg" alt="Ring" />
                    </noscript>
                </picture>
                <picture style="--arp:236/150" data-src-img="/images/logo--philips.svg" data-attr='{ "alt" : "Philips Hue Personal Wireless Lighting" }'>
                    <noscript>
                        <img src="/images/logo--philips.svg" alt="Philips Hue Personal Wireless Lighting"/>
                    </noscript>
                </picture>
            </div>
            <div class="copy__footer">
                <a href="Warranties<%= DtmContext.ApplicationExtension %>" class="copy__disclaimer">Manufacturer's warranty information here.</a>
            </div>
        </div>
    </div>
</section>

<section aria-labelledby="copy-first-title" class="view view--content">
    <div id="copy-first" class="view__anchor"></div>
    <div class="view__in copy copy--display">
        <h2 id="copy-first-title">
            <span>Your smart home connected to Alexa is on the job</span>
            <span>throughout your day, and when you're away.</span>
        </h2>
        <noscript>
            <style>
                .carousel--fade .carousel__item:nth-child(n+1) {
                    position: relative;
                    opacity: 1;
                }
            </style>
        </noscript>
        <div id="lifestyle" class="carousel carousel--fade">
        <%
            var lifestyleSlides = new[]
            {
                new SortedList<string, Dictionary<string, string>>
                {
                    {
                        "Keep an eye on things outside",
                        new Dictionary<string, string>
                        {
                            { "src", "/images/lifestyle/lifestyle-slide-1-1.jpg" },
                            { "alt", "Black Echo on a table" }
                        }
                    },
                    {
                        "While relaxing inside your home",
                        new Dictionary<string, string>
                        {
                            { "src", "/images/lifestyle/lifestyle-slide-1-2.jpg" },
                            { "alt", "Woman with red hair writing in a notebook next to a black Echo on the table" }
                        }
                    }
                },
                new SortedList<string, Dictionary<string, string>>
                {
                    {
                        "Keep in touch with friends and family",
                        new Dictionary<string, string>
                        {
                            { "src", "/images/lifestyle/lifestyle-slide-2-1.jpg" },
                            { "alt", "Young mother with 2 children watching on an Echo sitting on the kitchen counter" }
                        }
                    },
                    {
                        "Simplify everyday tasks",
                        new Dictionary<string, string>
                        {
                            { "src", "/images/lifestyle/lifestyle-slide-2-2.jpg" },
                            { "alt", "Woman watching on an Echo while standing in front of the stove" }
                        }
                    }
                }
            };

            foreach (SortedList<string, Dictionary<string, string>> lifestyleSlide in lifestyleSlides)
            {
                var attributes = "copy__group copy--carousels carousel__item";
                var isFirstLifestyleSlide = lifestyleSlides.First() == lifestyleSlide;
                if (isFirstLifestyleSlide)
                {
                    attributes = String.Format("{0} {1}", attributes, "carousel__item--current");
                }
                %>
                <div class="<%= attributes %>">
                <%
                foreach (var lifestyleContent in lifestyleSlide)
                {
                    var caption = lifestyleContent.Key ?? string.Empty;
                    var imageAlt = lifestyleContent.Value["alt"] ?? string.Empty;
                    var imageSrc = lifestyleContent.Value["src"] ?? string.Empty;
                    var imageWebp = imageSrc.Replace(".png", ".webp").Replace(".jpg", ".webp");

                    %>
                    <figure class="copy__figure">
                        <picture style="--arp:1080/624" class="copy__image" data-src-img="<%= imageSrc %>" data-tag='{ "source" : [{ "srcset" : "<%= imageWebp %>", "type" : "image/webp" }], "img" : [{ "src" : "<%= imageSrc %>", "alt" : "<%= imageAlt %>" }] }'>
                            <noscript>
                                <source srcset="<%= imageWebp %>" type="image/webp"/>
                                <img src="<%= imageSrc %>" alt="<%= imageAlt %>"/>
                            </noscript>
                        </picture>
                        <figcaption><%= caption %></figcaption>
                    </figure>
                    <%
                }
                %>
                </div>
                <%
            }
            %>
        </div>

        <div class="copy__footer">
            <%= Html.Partial("OrderButton", new ViewDataDictionary { { "text", "Click Here To Order Now" }, { "id", "copy-order" } }) %>
        </div>
    </div>
</section>

<section aria-labelledby="gallery-title" class="view view--content">
    <div id="gallery" class="view__anchor"></div>
    <div class="view__in copy copy--display">
        <h2 id="gallery-title" class="copy__header">Easy to set up and connect</h2>

        <div class="copy__group copy--images">
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/step-1.jpg" data-tag='{ "source" : [{ "srcset" : "/images/step-1.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/step-1.jpg", "alt" : "Finger interacting with the Amazon Alexa app on a smart phone" }]}'>
                    <noscript>
                        <source srcset="/images/step-1.webp" type="image/webp" />
                        <img src="/images/step-1.jpg" alt="Finger interacting with the Amazon Alexa app on a smart phone">
                    </noscript>
                </picture>
                <figcaption>Install your smart home devices according to manufacturer's instructions</figcaption>
            </figure>
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/step-2.jpg" data-tag='{ "source" : [{ "srcset" : "/images/step-2.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/step-2.jpg", "alt" : "Hand holding a smart phone showing the Amazon Alexa app loading" }]}'>
                    <noscript>
                        <source srcset="/images/step-2.webp" type="image/webp" />
                        <img src="/images/step-2.jpg" alt="Hand holding a smart phone showing the Amazon Alexa app loading">
                    </noscript>
                </picture>
                <figcaption>Download the Alexa app and add your devices</figcaption>
            </figure>
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/step-3.jpg" data-tag='{ "source" : [{ "srcset" : "/images/step-3.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/step-3.jpg", "alt" : "Speech bubble saying Alexa, show me the front door" }]}'>
                    <noscript>
                        <source srcset="/images/step-3.webp" type="image/webp" />
                        <img src="/images/step-3.jpg" alt="Speech bubble saying Alexa, show me the front door">
                    </noscript>
                </picture>
                <figcaption>Just ask!</figcaption>
            </figure>
        </div>
    </div>
</section>

<section aria-labelledby="gallery-title" class="view view--content">
    <div id="gallery" class="view__anchor"></div>
    <div class="view__in copy copy--display">
        <h2 id="gallery-title" class="copy__header">Perfect for so many daily uses around the home</h2>

        <div class="copy__group copy--images">
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/daily-1.jpg" data-tag='{ "source" : [{ "srcset" : "/images/daily-1.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/daily-1.jpg", "alt" : "Speech bubble saying Alexa, show me the front door" }]}'>
                    <noscript>
                        <source srcset="/images/daily-1.webp" type="image/webp" />
                        <img src="/images/daily-1.jpg" alt="Speech bubble saying Alexa, show me the front door">
                    </noscript>
                </picture>
                <figcaption>Real time notifications</figcaption>
            </figure>
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/daily-2.jpg" data-tag='{ "source" : [{ "srcset" : "/images/daily-2.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/daily-2.jpg", "alt" : "Speech bubble saying Alexa, what is the weather today?" }]}'>
                    <noscript>
                        <source srcset="/images/daily-2.webp" type="image/webp" />
                        <img src="/images/daily-2.jpg" alt="Speech bubble saying Alexa, what is the weather today?">
                    </noscript>
                </picture>
                <figcaption>News &amp; Entertainment</figcaption>
            </figure>
            <figure class="copy__figure">
                <picture class="copy__image" style="--arp:720/620;--arp-max:350px" data-src-img="/images/daily-3.jpg" data-tag='{ "source" : [{ "srcset" : "/images/daily-3.webp", "type" : "image/webp" }], "img" : [{ "src" : "/images/daily-3.jpg", "alt" : "Speech bubble saying Alexa, set timer for 5 minutes" }]}'>
                    <noscript>
                        <source srcset="/images/daily-3.webp" type="image/webp" />
                        <img src="/images/daily-3.jpg" alt="Speech bubble saying Alexa, set timer for 5 minutes">
                    </noscript>
                </picture>
                <figcaption>Simplify everyday tasks!</figcaption>
            </figure>
        </div>
    </div>
</section>

<% if (tvOffer) { %>
<section aria-labelledby="home-title" class="view view--content">
    <div id="home" class="view__anchor"></div>
    <div class="view__in copy copy--display">
        <h2 id="home-title" class="copy__header">Make the most of your new smart home</h2>

        <picture class="home-diagram" data-src-img="/images/home-diagram--mobile.jpg" data-tag='{ "source" : [{ "srcset" : "/images/home-diagram.jpg", "media" : "(min-width: 640px)" }], "img" : [{ "src" : "/images/home-diagram--mobile.jpg", "alt" : "All the different locations in your home that work great with Alexa" }]}'>
            <noscript>
                <source srcset="/images/home-diagram.jpg" media="(min-width: 640px)" />
                <img src="/images/home-diagram--mobile.jpg" alt="All the different locations in your home that work great with Alexa">
            </noscript>
        </picture>

    </div>
</section>
<% } %>


<%
    var testimonialConfig = new ViewDataDictionary
    {
        { "showMoreLink", false },
        { "showOrderButton", false }
    };

    Html.RenderPartial("_Testimonials-Long", Model, testimonialConfig);
%>