<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Dtm.Framework.Base.Models.BaseClientViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="Dtm.Framework.ClientSites.Web.Models" %>
<%@ Import Namespace="Dtm.Framework.Base.Models" %>
<%@ Import Namespace="ASH.Reviews" %>

<link rel="stylesheet" href="/css/reviews.css">

<section aria-labelledby="reviews-title" class="view view--reviews view--observe view--bg">
    <div id="reviews" class="view__anchor"></div>
    <div class="view__in">
        <div class="copy copy--display">
            <h2 id="reviews-title" class="copy__title reviews__title">
              <picture class="stars" style="--arp:250/40;--arp-max:250px" data-src-img="/images/stars.svg" data-attr='{ "aria-hidden" : "true" }'>
                  <noscript>
                      <img src="/images/stars.svg" alt="" aria-hidden="true">
                  </noscript>
              </picture>
              <span>Five Star Amazon Reviews</span>
              <picture class="stars" style="--arp:250/40;--arp-max:250px" data-src-img="/images/stars.svg" data-attr='{ "aria-hidden" : "true" }'>
                  <noscript>
                      <img src="/images/stars.svg" alt="" aria-hidden="true">
                  </noscript>
              </picture>
            </h2>
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
                    var amazonReviews = new AmazonReviews();
                    var reviews = amazonReviews.ReviewList.Where(r => r.ProductName != "Ring Video Doorbell").ToList();

                    var slideIndex = 0;
                    var currentIndex = 0;
                    var batchSize = 3;
                    var totalReviewsAmount = reviews.Count;

                    while (currentIndex < totalReviewsAmount)
                    {
                        var reviewBatch = reviews.Skip(currentIndex).Take(batchSize);
                        currentIndex += batchSize;

                        %>
                        <div id="review-<%= slideIndex %>" class="slide__item">
                        <%

                        foreach (var review in reviewBatch)
                        {
                            %>
                            <blockquote class="review__item review__item--slide">
                                <picture class="review__stars" style="--arp:250/40;--arp-max:250px" data-src-img="/images/stars.svg" data-attr='{ "aria-hidden" : "true" }'>
                                    <noscript>
                                        <img src="/images/stars.svg" alt="" aria-hidden="true">
                                    </noscript>
                                </picture>
                                <strong class="review__title"><%= review.Title %></strong>
                                <div class="review__text"><%= review.Review %></div>
                                <footer class="review__text">
                                    <strong><%= review.CustomerName %></strong>
                                    <span class="review__product"><%= review.ProductName %></span>
                                </footer>
                            </blockquote>
                            <%
                        }

                        %>
                        </div>    
                        <%

                        slideIndex++;
                    }
                %>
                </div>
                <nav aria-label="Reviews previous and next slides" class="slide__nav review__nav">
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
                    var thumbnailIndex = 0;
                    var currentThumbnailIndex = 0;

                    while (currentThumbnailIndex < totalReviewsAmount)
                    {
                        currentThumbnailIndex += batchSize;

                        %>
                        <a href="#review-<%= thumbnailIndex %>" class="slide__thumbnail" data-slide-index="<%= thumbnailIndex %>" aria-label="Reviews"></a>
                        <%

                        thumbnailIndex++;
                    }
                %>
                </nav>
            </div>
        </div>
    </div>
</section>