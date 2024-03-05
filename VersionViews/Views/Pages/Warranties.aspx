<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%
var hasRingDoorbellOffer = DtmContext.Version != 7;
%>

<main aria-labelledby="main-title" class="view">
	<div id="main" class="view__anchor"></div>
	<div class="view__in">
		<div class="copy copy--article">
			<h2 id="main-title">Manufacturer's Warranty</h2>

			<ul>
				<li>
					<a href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201014520" id="warranty-echo-show-5" target="_blank">Amazon Echo Show 5 - Manufacturer's Warranty &ndash; 1 year</a>
				</li>
				<li>
					<a href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201014520" id="warranty-echo-show-8" target="_blank">Amazon Echo Show 8 - Manufacturer's Warranty &ndash; 1 year</a>
				</li>
				<li>
					<a href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201014520" id="warranty-smart-plug" target="_blank">Amazon Smart Plug - Manufacturer's Warranty &ndash; 1 year</a>
				</li>
				<% if (hasRingDoorbellOffer) { %>
				<li>
					<a href="https://shop.ring.com/pages/warranty" id="warranty-ring-doorbell" target="_blank">Ring Video Doorbell (2nd Gen) - Manufacturer's Warranty &ndash; 1 year</a>
				</li>
				<% } %>
				<li>
					<a href="https://shop.ring.com/pages/warranty" id="warranty-ring-camera" target="_blank">Ring Indoor Cam - Manufacturer's Warranty &ndash; 1 year</a>
				</li>
				<%--<li>
					<a href="https://www.philips-hue.com/en-us/support/warranty" id="warranty-philips" target="_blank">Philips Hue Smart Lights (White Ambiance) - Manufacturer's Warranty &ndash; 3 years</a>
				</li>--%>
			</ul>

			<p>If you need any help locating the applicable warranty, you can email us at <a href="mailto:smarthomehelp@dandh.com">smarthomehelp@dandh.com</a>. </p>

		</div>
	</div>
</main>

</asp:Content>