<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%
    var label = ViewData["label"] as string ?? "This will be announced by screen readers.";
    var standfirst = ViewData["standfirst"] as string ?? string.Empty;
    var dollar = ViewData["dollar"] as string ?? "XX";
    var cent = ViewData["cent"] as string ?? string.Empty;
    var disclaimer = ViewData["disclaimer"] as string ?? string.Empty;
    var cssClasses = ViewData["cssClasses"] as string ?? string.Empty;
    var hasCrossout = ViewData["hasCrossout"] as string ?? string.Empty;

    var discountOf = ViewData["discountOf"] as ViewDataDictionary ?? new ViewDataDictionary();
    var hasDiscountOf = discountOf.Count() > 0;
%>

<div class="offer offer--product <%= cssClasses %> sr">
    <% if (!string.IsNullOrEmpty(label)) { %>
        <span class="sr__text"><%= label %></span>
    <% } %>
    <% if (!String.IsNullOrEmpty(standfirst)) { %>
    <div class="offer__txt <%= hasCrossout %>" aria-hidden="true" role="presentation"><%= standfirst %></div>
    <% } %>
    <% if (hasDiscountOf) {
            var dollarDiscountOf = discountOf["dollar"] as string ?? "XX";
            var centDiscountOf = discountOf["cent"] as string ?? string.Empty;

    %>
    <div class="offer__price offer__is-discount-of" aria-hidden="true" role="presentation">
        <span class="offer__currency">$</span>
        <span class="offer__amt"><%= dollarDiscountOf %></span>
        <span class="offer__follow">
            <% if (!String.IsNullOrEmpty(cent))
                { %>
            <span class="offer__cent"><%= centDiscountOf %></span>
            <% } %>
        </span>
    </div> 
    <% } %>
    <div class="offer__price" aria-hidden="true" role="presentation">
        <span class="offer__currency">$</span>
        <span class="offer__amt"><%= dollar %></span>
        <span class="offer__follow">
            <% if (!String.IsNullOrEmpty(cent))
                { %>
            <span class="offer__cent"><%= cent %></span>
            <% } %>
            <% if (!String.IsNullOrEmpty(disclaimer)) { %>
                <span class="offer__disclaimer"><%= disclaimer %></span>
            <% } %>
        </span>
    </div>
</div>