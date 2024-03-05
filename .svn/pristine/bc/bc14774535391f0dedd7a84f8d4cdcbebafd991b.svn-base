<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%= Html.Partial("Content-Index") %>

    <% var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true]; %>

    <% if (isTakingOrders) { %>
    <section aria-labelledby="offer-title" class="view view--content offer-card">
      <div id="order" class="view__anchor"></div>
      <div class="copy copy--display offer-card__banner center-text">
          <h2 class="uppercase">This offer is not available in stores</h2>
           <%= Html.Partial("PayPalBanner", new ViewDataDictionary { { "onSiteMessage", true } }) %>
          <%= Html.Partial("OrderButton", new ViewDataDictionary { { "text", "Click Here To Order Now" }, { "id", "form-title-order" } }) %>
      </div>

    </section>
    <% } %>

</asp:Content>