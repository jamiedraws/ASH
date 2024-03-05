<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var id = ViewData["id"] as string ?? "deal";
    var type = ViewData["type"] as string ?? string.Empty;
    var productCode = ViewData["productCode"] as string ?? string.Empty;

    var isDiscount = productCode.EndsWith("10");
    var typeIsDiscount = type == "discount";
    var typeIsCountdown = type == "countdown";
    var typeIsTV = type == "tv";
    var typeIsOnline = type == "online";

    var bannerText = "Special Limited Time Offer";
    var bannerClasses = "deal__banner banner";

    if (isDiscount && typeIsDiscount)
    {
        bannerText = "Online Only 10% Off Today!";
        bannerClasses = String.Format("{0} deal__discount", bannerClasses);
    }

    if (typeIsTV)
    {
        bannerText = "Special TV Offer";
        bannerClasses = String.Format("{0} deal__tv banner--bold banner--dark", bannerClasses);
    }

    if (typeIsOnline)
    {
        bannerText = "Exclusive Online Offer";
        bannerClasses = String.Format("{0} banner--bold banner--dark", bannerClasses);
    }

    var isTakingOrders = SettingsManager.ContextSettings["Order.EnableOrderform", true];
%>

<% if (typeIsDiscount) { %>
    <a href="#order" id="<%= id %>-order" class="<%= bannerClasses %>">
	    <span><%= bannerText %></span>
    </a>
<% } %>

<% if (typeIsTV || typeIsOnline) { %>
    <div id="<%= id %>" class="<%= bannerClasses %>">
	    <span><%= bannerText %></span>
    </div>
<% } %>

<% if (typeIsCountdown) { %>
    <%
        // set timezone to eastern standard time (EST)
        var est = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");

        var currentDate = DateTime.Now;
        currentDate = TimeZoneInfo.ConvertTime(currentDate, est);

        // cut off date is set to 11/1/2020 at midnight. orders will stop after this
        var cutoffDate = new DateTime(2020, 11, 1);
        var countdownDate = cutoffDate - currentDate;

        var days = countdownDate.Days;
        var hours = countdownDate.Hours;
        var minutes = countdownDate.Minutes;
        var seconds = countdownDate.Seconds;

        var dayText = string.Empty;
        if (days > 0)
        {
            dayText = String.Format(@"<span data-days=""{0}"">{0}</span> {1},", days, days > 1 ? "days" : "day");
        }

        var hourText = string.Empty;
        if (hours > 0)
        {
            hourText = String.Format(@"<span data-hours=""{0}"">{0}</span> {1},", hours, hours > 1 ? "hours" : "hour");
        }

        var minuteText = string.Empty;
        if (minutes > 0)
        {
            minuteText = String.Format(@"<span data-minutes=""{0}"">{0}</span> {1},", minutes, minutes > 1 ? "minutes" : "minute");
        }

        var secondText = string.Empty;
        if (seconds > 0)
        {
            secondText = String.Format(@"<span data-seconds=""{0}"">{0}</span> {1}", seconds, seconds > 1 ? "seconds" : "second");
        }

        // once time is out, remove the banner as navigation will go to v5 (offer no longer available)
        var isExpired = days <= 0 && hours <= 0 && minutes <= 0 && seconds <= 0;
    %>
    <% if (!isExpired && isTakingOrders) { %>
    <span class="banner banner--countdown countdown" data-time="<%= countdownDate %>">
        <%
            var description = String.Format("Hurry! This offer expires in {0} {1} {2} {3}.", dayText, hourText, minuteText, secondText);
        %>
        <span><%= description %></span> <small>Offer valid through 10/31/2020.</small></span>
    <script defer src="/js/countdown.js"></script>
    <% } else if (!isTakingOrders) { %>
        <div class="banner banner--oos" aria-live="assertive">
            Due to overwhelming demand, this offer is no longer available, however you can purchase each of the items through Amazon by <a href="https://www.amazon.com/b?node=21605029011" id="header-amazon-offer" target="_blank">clicking here</a>.
        </div>
    <% } %>
<% } %>