<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Dtm.Framework.Base.Models.BaseClientViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="Dtm.Framework.ClientSites.Web.Models" %>
<%@ Import Namespace="Dtm.Framework.Base.Models" %>
<%

    var ext = DtmContext.ApplicationExtension;
    var displayDefault = "carousel";
    var showMoreLink = ViewData["showMoreLink"] as bool? ?? true;
    var showOrderButton = ViewData["showOrderButton"] as bool? ?? false;
    var display = ViewData["display"] as string ?? displayDefault;
    var isCarousel = display == displayDefault;
    var isList = display == "list";
    var title = ViewData["title"] as string ?? "Real User Reviews";

    if (Model != null && Model.Testimonials != null && Model.Testimonials.Any())
    {
        var approvedTestimonials = Model.Testimonials.Where(t => t.IsApproved
        && (!t.CampaignOfferVersionId.HasValue
        || (t.CampaignOfferVersionId.HasValue && t.CampaignOfferVersionId.Value == DtmContext.VersionId))
        && (!t.CampaignOfferId.HasValue
        || (t.CampaignOfferId.HasValue && t.CampaignOfferId.Value == DtmContext.OfferId)))
        .OrderBy(t => t.DisplayRank.HasValue ? t.DisplayRank.Value : 0);

        if (approvedTestimonials.Any())
        {
            var approvedCampaignTestimonials = approvedTestimonials.Where(t => !t.CampaignOfferVersionId.HasValue
                && !t.CampaignOfferId.HasValue).ToList()
                ?? new List<TestimonialView>();
            var approvedOfferTestimonials = approvedTestimonials.Where(t => t.CampaignOfferId.HasValue
                && !t.CampaignOfferVersionId.HasValue).ToList()
                ?? new List<TestimonialView>();
            var approvedVersionTestimonials = approvedTestimonials.Where(t => t.CampaignOfferVersionId.HasValue).ToList()
                ?? new List<TestimonialView>();

            var testimonials = approvedCampaignTestimonials;
            if (approvedVersionTestimonials.Count() > 0)
            {
                testimonials = approvedVersionTestimonials;
            }
            else if (approvedOfferTestimonials.Count() > 0)
            {
                testimonials = approvedOfferTestimonials;
            }

            if (isCarousel)
            {
                var carouselTestimonials = testimonials.Where(t => t.OkToShowName).ToList();
                var hasCarouselTestimonials = carouselTestimonials.Count() > 0;

                if (hasCarouselTestimonials)
                {
%>

<section aria-labelledby="reviews-title" class="view view--reviews view--observe view--bg">
    <div id="reviews" class="view__anchor"></div>
    <div class="view__in">
        <div class="copy copy--display">
            <h2 id="reviews-title" class="copy__title"><%= title %></h2>
            <div class="slide slide--no-scrollbar review review--slide">
                <div class="slide__js">
                    <noscript>
                        <style>
                            .slide__js {
                                display: none;
                            }
                        </style>
                    </noscript>
                </div>
                <div id="reviews-slide" class="slide__into" tabindex="0">
                <%
                    foreach (var testimonial in carouselTestimonials)
                    {
                        var quote = testimonial.Quote;
                        var name = String.Format("{0} {1}", testimonial.FirstName, testimonial.LastName);
                %>
                    <div id="review-<%= testimonial.DisplayRank %>" class="slide__item">
                        <blockquote class="review__item review__item--slide">
                            <picture class="review__stars" style="--arp:250/40;--arp-max:250px" data-src-img="/images/stars.svg" data-attr='{ "aria-hidden" : "true" }'>
                                <noscript>
                                    <img src="/images/stars.svg" alt="" aria-hidden="true">
                                </noscript>
                            </picture>
                            <div class="review__text">
                                <%= quote %>
                            </div>
                            <footer class="review__text"><strong><%= name %></strong></footer>
                        </blockquote>
                    </div>
                <%
                    }
                %>
                </div>
                <nav aria-label="Reviews previous and next slides" class="slide__nav">
                    <button
                        id="slide-prev"
                        aria-label="Select the previous slide"
                        class="slide__prev"
                        type="button"
                    >
                        <span class="icon-chevron-thin-left"></span>
                    </button>
                    <button
                        id="slide-next"
                        aria-label="Select the next slide"
                        class="slide__next"
                        type="button"
                    >
                        <span class="icon-chevron-thin-right"></span>
                    </button>
                </nav>
                <nav aria-label="Reviews thumbnail" class="slide__thumbnails">
                <%

                    foreach (var testimonial in carouselTestimonials)
                    {
                        var i = testimonial.DisplayRank;
                        var classes = "slide__thumbnail";
                        var name = String.Format("{0} {1}", testimonial.FirstName, testimonial.LastName);
                     
                        %>
                        <a href="#review-<%= i %>" class="<%= classes %>" data-slide-index="<%= i %>" aria-label="Review for <%= name %>">
                        </a>
                        <%
                            }
                %>
                </nav>
            </div>
            <% if (showMoreLink)
                { %>
            <div class="copy__footer">
                <a href="Reviews<%= ext %>" id="index-reviews"  class="button">
                    <span>More Reviews</span>
                </a>
            </div>
            <% } %>
            <% if (showOrderButton) {
                    %>
            <div class="copy__footer">
                <%= Html.Partial("OrderButton", new ViewDataDictionary { { "text", "Click Here To Order Now" }, { "id", "review-order" } }) %>
            </div>
            <% } %>
        </div>
    </div>
</section>
<%
    }
 } %>

<% if (isList)
    {
        var listTestimonials = testimonials.Where(t => t.OkToShowName).ToList();
        var hasListTestimonials = listTestimonials.Count() > 0;

        if (hasListTestimonials) {
            %>
<main aria-labelledby="main-title" class="view">
    <div id="main" class="view__anchor"></div>
    <div class="view__in">
        <div class="copy copy--single">
            <h2 id="main-title" class="copy__title"><%= title %></h2>
        </div>
        <div class="review">
        <%
        foreach (var testimonial in listTestimonials)
        {
            var quote = testimonial.Quote;
            var name = String.Format("{0} {1}", testimonial.FirstName, testimonial.LastName);
        %>
        <blockquote class="review__item review__item--stacked">
            <picture class="review__stars" style="--arp:250/40;--arp-max:250px" data-src-img="/images/stars.svg">
                <noscript>
                    <img src="/images/stars.svg" alt="">
                </noscript>
            </picture>
            <div class="review__text">
                <%= quote %>
            </div>
            <footer class="review__text"><strong><%= name %></strong></footer>
        </blockquote>
        <%
        }
        %>
        </div>
    </div>
</main>
            <%
        }


            } %>
<% }
    } %>