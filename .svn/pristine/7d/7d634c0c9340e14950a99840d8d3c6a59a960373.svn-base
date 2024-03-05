<%@ Page Language="C#" MasterPageFile="~/ASHPARTS/Views/Layouts/ConfirmationLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%@ Import Namespace="System.Web.Script.Serialization" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%= Html.Partial("Checkout") %>
   <script>
       document.addEventListener("DOMContentLoaded", function () {
           document.getElementById("ShippingIsDifferentThanBilling").addEventListener("change", function () {
               toggleShipping();
           });
       });
   </script>
</asp:Content>