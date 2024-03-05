<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%
    var ext = DtmContext.ApplicationExtension;
    var version = DtmContext.Version;
    var isMobile = DtmContext.IsMobile;
    var isDesktop = !isMobile;

    var productAttributeName = SettingsManager.ContextSettings["Label.ProductName"];
    var productName = productAttributeName;

    var digitalRiverDisclaimerLink = SettingsManager.ContextSettings["DigitalRiver.CompanyDisclaimer"];

%>

<main aria-label="Offer" class="view hero">
    <div id="main" class="view__anchor"></div>
    <picture class="hero__bg">
        <source srcset="/images/bg--offer.webp" type="image/webp"/>
        <img src="/images/bg--offer.jpg" aria-hidden="true">
    </picture>
    <div class="view__in hero__in">
        <div class="hero__group">
            <div class="hero__products">
                <picture style="--arp:793/504;--arp-max:767px">
                    <source srcset="/images/all-products.webp" type="image/webp" />
                    <img src="/images/all-products.png" alt="Product display of <%= productAttributeName %>">
                </picture>
                <span class="hero__burst">
                    $319.95 Value!
                </span>
                <div class="hero__offer">
                    <%= Html.Partial("OfferGroup", new ViewDataDictionary {
                        { "modifier", "deal--hero" },
                        { "id", "hero" },
                        { "exclude", new List<string> {
                            "banner",
                            "orderSingle",
                            "orderMulti"
                        } }
                    }) %>
                    <strong class="hero__shipping bold">+FREE SHIPPING!</strong>
                </div>
                <span class="hero__disclaimer"><%= digitalRiverDisclaimerLink %></span>
            </div>
            <div class="hero__addons addons copy">
                <div class="addons__in">
                    <h2 class="addons__title uppercase"><span>Alexa Smart</span> <span>Home Starter Kit</span></h2>
                    <div class="addons__title">Includes:</div>
                    <ul class="addons__list">
                      <li>Echo Show 5 with Alexa</li>
                      <li>2 Philips Hue Smart Lights <br>(White Ambiance)</li>
                      <li>Ring Video Doorbell</li>
                      <li>Ring Indoor Camera</li>
                    </ul>
                    <div class="addons__title">Bonus Item:</div>
                    <ul class="addons__list">
                        <li>
                            Amazon Smart Plug<br /><strong>($24.99 Value)</strong>
                        </li>
                    </ul>
                    <div class="addons__group">
                        <%= Html.Partial("OrderButton", new ViewDataDictionary { { "modifier", "button addons__button" }, { "id", "hero-order" } }) %>
                        <picture class="hero__mbg" style="--arp:163/190;--arp-max:163px;" data-src-img="/images/mbg.png" data-attr='{ "alt" : "30 day money back guarantee" }'>
                            <noscript>
                                <img src="/images/mbg.png" alt="30 day money back guarantee">
                            </noscript>
                        </picture>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%= Html.Partial("PayPalBanner") %>
</main>

<section aria-labelledby="media-title" class="view view--content view--grid media">
    <div id="media" class="view__anchor"></div>
    <div class="view__in">
        <div class="media__group">
            <noscript>
                <style>
                    .media__player {
                        display: none;
                    }
                </style>
            </noscript>
            <div class="media__player media__item">
                <%
                    var videoIds = SettingsManager.ContextSettings["FrameworkJS/CSS.Eflex.Play.Source"];
                    var videoLabels = SettingsManager.ContextSettings["FrameworkJS/CSS.Eflex.Play.Labels", "Product Overview | How It Works"];

                    if (!String.IsNullOrEmpty(videoIds) && !String.IsNullOrEmpty(videoLabels))
                    {
                        string[] videoIdArray =
                        string.IsNullOrEmpty(videoIds)
                        ? new string[0]
                        : videoIds
                            .Split(new[] { "|" }, StringSplitOptions.RemoveEmptyEntries)
                            .Select(s => s.Trim())
                            .Where(s => !string.IsNullOrWhiteSpace(s))
                            .ToArray();

                        string[] videoLabelArray =
                        string.IsNullOrEmpty(videoLabels)
                        ? new string[0]
                        : videoLabels
                            .Split(new[] { "|" }, StringSplitOptions.RemoveEmptyEntries)
                            .Select(s => s.Trim())
                            .Where(s => !string.IsNullOrWhiteSpace(s))
                            .ToArray();

                        var firstVideo = videoIdArray.FirstOrDefault();

                        if (firstVideo != null)
                        {
                            %>
                            <div class="media__video" data-src-iframe="https://player.vimeo.com/video/<%= firstVideo %>" style="--arp:630/354;" data-attr='{ "width": "630", "height": "354", "allow": "fullscreen; autoplay", "title" : "Video" }'></div>
                            <%
                        }

                        int labelLength = videoLabelArray.Count();

                        if (videoIdArray.Count() == labelLength)
                        {
                            %>
                            <nav aria-label="Video playlist">
                            <%
                            for (int i = 0; i < labelLength; i++)
                            {
                                var id = String.Format("video-{0}", videoLabelArray[i].Replace(" ", string.Empty));
                                %>
                                <button id="<%= id %>" class="button button--brand-primary" data-video-id="<%= videoIdArray[i] %>"><%= videoLabelArray[i] %></button>
                                <%
                            }
                            %>
                            </nav>
                            <%
                        }
                    }
                %>
            </div>
            <div class="media__item media__copy copy">
                <h2 id="media-title">Features & Benefits</h2>
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

            <figure class="copy__group copy--content">
                <div class="product product--figure copy__item">
                    <div class="product__picture slide">
                        <%= Html.Partial("_Perks", new ViewDataDictionary { { "applyPictures", true } }) %>
                        <%= Html.Partial("_Perks", new ViewDataDictionary { { "applyButtons", true } }) %>
                    </div>
                </div>
                <div class="product product--list copy__item">
                    <%= Html.Partial("_Perks") %>
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

<%
    var testimonialConfig = new ViewDataDictionary
    {
        { "showMoreLink", false }
    };

    if (version != 2)
    {
        testimonialConfig.Add("showOrderButton", true);
    }

    Html.RenderPartial("_Testimonials", Model, testimonialConfig);
%>

</asp:Content>