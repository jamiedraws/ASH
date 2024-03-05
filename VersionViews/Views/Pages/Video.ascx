<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="ASH.Models" %>

<noscript>
    <style>
        .media__player {
            display: none;
        }
    </style>
</noscript>
<%
var mediaPlayer = new MediaPlayer();

if (mediaPlayer.HasSingleVideo())
{
    var videos = mediaPlayer.VideoList;
    var firstVideo = videos.First();

    %>
<div class="media__player media__item">
    <div class="media__video contain contain--video bg__picture" data-src-iframe="https://player.vimeo.com/video/<%= firstVideo.Id %>?dnt=1" data-attr='{ "width": "630", "height": "354", "allow": "fullscreen"}'></div>
    <%

    if (mediaPlayer.HasMultipleVideos())
    {
        %>
        <nav aria-label="Video playlist">
        <%
        foreach (var video in videos)
        {
            var buttonId = video.Label.Replace(" ", "-").ToLower();
            %>
            <button id="video-button-<%= buttonId %>" class="button button--brand-primary" data-video-id="<%= video.Id %>"><%= video.Label %></button>
            <%
        }
        %>
        </nav>
        <%
    }
    %>
</div>
<%
}
%>