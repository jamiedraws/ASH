<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% 
    var modifier = ViewData["modifier"] as string ?? "button";
    var text = ViewData["text"] as string ?? "Order Now";
    var id = ViewData["id"] as string ?? string.Empty;

    var productName = SettingsManager.ContextSettings["Label.ProductName"];
    var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true];

    if (!String.IsNullOrEmpty(id) && isTakingOrders) {
%>
<a aria-label="Order the <%= productName %>" href="#order" id="<%= id %>"  class="<%= modifier %>">
    <span><%= text %></span>
</a>
<% } %>