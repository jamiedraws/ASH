<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
    var modifier = ViewData["modifier"] as string ?? "product__list";
    bool? applyButtons = ViewData["applyButtons"] as bool? ?? false;
    bool? applyId = ViewData["applyId"] as bool? ?? true;
    bool? applyPictures = ViewData["applyPictures"] as bool? ?? false;
    bool? applyDetails = ViewData["applyDetails"] as bool? ?? false;

    bool useButtons = applyButtons.HasValue ? applyButtons.Value : false;
    bool useId = applyId.HasValue ? applyId.Value : false;
    bool usePictures = applyPictures.HasValue ? applyPictures.Value : false;
    bool useDetails = applyDetails.HasValue ? applyDetails.Value : false;

    Tuple<string, string>[] features =
    {
        new Tuple<string, string>(
            "Echo Show 5 with Alexa",
            "Smart display ready to help manage your day"
        ),
        new Tuple<string, string>(
            "Ring Video Doorbell",
            "See, hear, and speak to anyone at your door"
        ),
        new Tuple<string, string>(
            "Ring Indoor Camera",
            "See your home, away from home"
        ),
        new Tuple<string, string>(
            "Two Philips Hue Smart Lights",
            "Control lights remotely or hands free"
        ),
        new Tuple<string, string>(
            "Amazon Smart Plug",
            "Add voice control to any outlet"
        )
    };

    if (features != null && features.Any())
    {

        var imageList = new[] {
            new Dictionary<string, string>
            {
                { "src", "/images/inuse-gallery/perks-slide-0.png" },
                { "alt", "Black Show 5 Echo with Alexa" }
            },
            new Dictionary<string, string>
            {
                { "src", "/images/inuse-gallery/perks-slide-1.png" },
                { "alt", "Ring Video Doorbell" }
            },
            new Dictionary<string, string>
            {
                { "src", "/images/inuse-gallery/perks-slide-2.png" },
                { "alt", "Ring Indoor Camera" }
            },
            new Dictionary<string, string>
            {
                { "src", "/images/inuse-gallery/perks-slide-3.png" },
                { "alt", "Two Philips Hue Smart Lights" }
            },
            new Dictionary<string, string>
            {
                { "src", "/images/inuse-gallery/perks-slide-4.png" },
                { "alt", "Amazon Smart Plug" }
            }
        };

        var carousel = new ViewDataDictionary {
            { "id", "perks" },
            { "slides", imageList.Count() }
        };

        if (useButtons)
        {
            carousel.Add("display", "thumbnails");
            carousel.Add("contextLabel", "feature");
        } else if (usePictures)
        {
            carousel.Add("slideRatio", "489/319");
            carousel.Add("imageList", imageList);
        }

        if (useButtons || usePictures)
        {
            Html.RenderPartial("_carousel", carousel);
        }
        else
        {
            int featureId = 0;
            if (useDetails) {
                modifier = String.Format("{0} product--has-details", modifier);
            }
            %>
            <ul class="<%= modifier %>">
            <%
                foreach (Tuple<string, string> feature in features)
                {
                    if (useId)
                    {
                    %>
                <li id="feature-<%= featureId %>">
                    <span>
                        <strong><%= feature.Item1 %></strong> <%= feature.Item2 %>
                        <% if (useDetails)
                            { %>
                            <button class="product__link" data-modal-action="open" type="button" id="product-detail-<%= featureId %>">More Details</button>
                        <% } %>
                    </span>
                </li>
                    <%
                    }
                    else
                    {
                    %>
                <li>
                    <span>
                        <strong><%= feature.Item1 %></strong> <%= feature.Item2 %>
                        <% if (useDetails)
                            { %>
                            <button class="product__link" data-modal-action="open" type="button" id="product-detail-<%= featureId %>">More Details</button>
                        <% } %>
                    </span>
                </li>
                    <%
                    }
                    featureId++;
                }
                %>
            </ul>
            <%
        }
    }
%>