<%@ Page Language="C#" MasterPageFile="~/ASHPARTS/Views/Layouts/ConfirmationLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%= Html.Partial("Checkout") %>

</asp:Content>