<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>

<%
    var isIndex = DtmContext.PageCode == "Index";
    var isFAQ = DtmContext.PageCode == "FAQ";
    var isPaymentPage = DtmContext.PageCode == "PaymentForm";
    var v = String.Format("?v={0}", 8);
%>

<% if (isIndex) { %>
    <script src="https://player.vimeo.com/api/player.js"></script>
    <script defer src="/js/slide/js/slide.js<%= v %>"></script>
    <script defer src="/js/slide/js/components/slide.a11y.js<%= v %>"></script>
    <script defer src="/js/slide/js/components/slide.thumbnails.js<%= v %>"></script>
    <script defer src="/js/index.js<%= v %>"></script>
    <script defer src="/js/carousel.js<%= v %>"></script>
<% } %>

<% if (isFAQ) { %>
    <script defer src="/js/card.js<%= v %>"></script>    
<% } %>

<% if (DtmContext.Page.IsStartPageType && DtmContext.Version == 6) { %>
    <link rel="stylesheet" href="/css/surveys/exit6.css<%= v %>" />
    <script id="modal__answer-combo-response" type="text/template">
        <div id="{{ id }}" class="c-modal c-modal--standalone c-modal--answer-combo-response">
            <input aria-label="Close this modal" id="modal__{{ id }}__close" type="checkbox" class="c-modal__checkbox--close">
            <label for="modal__{{ id }}__close" class="c-modal__overlay"></label>
            <fieldset class="c-modal__fieldset">
                <h3 class="c-modal__title c-modal__title--single">{{ title }}</h3>
                <a href="{{ url }}" class="c-modal__link">
                    <picture class="c-modal__picture">
                        <source srcset="/images/surveys/{{ id }}-mobile.jpg" media="(max-width: 500px)" />
                        <img src="/images/surveys/{{ id }}-desktop.jpg" alt="{{ description }}" />
                    </picture>
                </a>
                {{ #progress }}
                <div class="c-modal__progress">
                    <span></span>
                </div>
                {{ /progress }}
                {{ #close }}
                <nav aria-label="Offer" class="c-modal__nav">
                    <a href="{{ url }}" class="c-modal__label c-modal__callout">
                        <span>Shop now</span>
                    </a>
                    <label for="modal__{{ id }}__close" class="c-modal__label">
                        <span>No, thanks</span>
                    </label>
                </nav>
                {{ /close }}
            </fieldset>
        </div>
    </script>
    <script defer src="/js/surveys/exit6.js?<%= v %>"></script>
<% } %>