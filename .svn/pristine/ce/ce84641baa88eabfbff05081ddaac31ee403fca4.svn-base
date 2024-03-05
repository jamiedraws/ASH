<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%
  var customerServiceNumber = SettingsManager.ContextSettings["CustomerService.PhoneNumber", "1-888-325-1257"];
  var customerServiceEmail = SettingsManager.ContextSettings["CustomerService.EmailAddress"];
  var hoursOfService = SettingsManager.ContextSettings["CustomerService.HoursOfService"];
  var refundDays = SettingsManager.ContextSettings["CustomerService.RefundDays"];
  var productName = SettingsManager.ContextSettings["Label.ProductName"];
  var brandName = SettingsManager.ContextSettings["Label.BrandName"];
%>

<noscript>
    <style>
        .card__content {
          visibility: visible;
          max-height: none;
        }

        .card__copy {
          opacity: 1;
        }

        .card__icon expando__icon {
          display: none;
        }
    </style>
</noscript>

        <main
            aria-labelledby="main-title"
            class="view defer defer--from-top section page"
        >
            <div id="main" class="view__anchor"></div>
            <div class="view__in section__in defer__progress">
                <div class="section__block">
                    <div class="copy copy--article">
                        <h2 id="main-title">Frequenty Asked Questions</h2>
                    </div>
                    <div class="article article--contain">
                        <div class="article__copy">

                    <ul
                        class="article__card-list"
                        aria-label="FAQ"
                        itemscope
                        itemtype="https://schema.org/FAQPage"
                    >
                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ1" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >1. What is included in the Alexa smart
                                        home starter kit?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        The Alexa smart home starter kit
                                        includes: 1) 1x Echo Show 5, 2) 1x Ring
                                        Indoor Camera, 3) 2x Philips Hue white
                                        ambiance smart bulbs and, as an added
                                        bonus, you&rsquo;ll also receive 1x Amazon
                                        Smart Plug plus FREE standard shipping.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ2" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >2. What are the key features/benefits
                                        of the Alexa smart home starter
                                        kit?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        The Alexa smart home starter kit makes
                                        it easy to have a truly smart home with
                                        all of the convenience, security and
                                        peace of mind that comes with it. Your
                                        kit is simple to set up and easy to use!
                                        You&rsquo;ll be able to monitor activity
                                        inside your home, even if you aren&rsquo;t
                                        there; you&rsquo;ll be able to control and
                                        automate your home&rsquo;s connected lighting
                                        as well as accomplish routine tasks
                                        simply by voice command, remotely with
                                        your smartphone or by being completely
                                        automated. Plus, this exclusive TV offer
                                        will save you over 30% off MSRP!
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ3" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >3. How do these devices work together
                                        to make my home smarter?
                                    </span>
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        When you connect these smart home
                                        devices to you Echo Show, you can
                                        control your devices with just the sound
                                        of your voice. Alexa also acts as a
                                        unifier, allowing you to control all of
                                        your connected devices from a single
                                        app.
                                    </p>
                                    <ol class="card__alpha-list">
                                        <li>
                                            <span class="card__underline"
                                                >Ring Indoor Camera:</span
                                            >
                                            view live video feeds from your
                                            camera on your Amazon Echo Show 5.
                                            Speak to visitors directly through
                                            your Echo device.
                                        </li>
                                        <li>
                                            <span class="card__underline"
                                                >Philips hue:</span
                                            >
                                            When you connect your Philips Hue
                                            Smart Lights to Alexa, you can turn
                                            your smart lights on and off with
                                            your voice or create routines using
                                            the Alexa app to automatically
                                            control them and other connected
                                            devices with a single phrase. Set
                                            your smart lights to brighten ahead
                                            of your alarm to mimic the sunrise
                                            and help you wake up more naturally.
                                            You can also set up  to
                                            enable Away Lighting when Guard is
                                            in Away mode, so it looks like you
                                            are home even when you are away.
                                            Indoor use only.
                                        </li>
                                        <li>
                                            <span class="card__underline"
                                                >Amazon Smart Plug:</span
                                            >
                                            The Amazon Smart Plug allows you to
                                            add voice control to any outlet!
                                            Schedule lights, fans, and
                                            appliances to turn on and off
                                            automatically, or control them
                                            remotely when you&rsquo;re away.
                                            <ol>
                                                <li>
                                                    Only devices with a
                                                    mechanical on/off switch
                                                    work with Amazon Smart Plug.
                                                    Indoor use only.
                                                </li>
                                            </ol>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ4" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >4. What is required to use these
                                        devices?
                                    </span>
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <ul>
                                        <li>
                                            <span class="card__underline"
                                                >WiFi:</span
                                            >
                                            All devices need WiFi to operate as
                                            advertised. Amazon Smart Plug and
                                            Ring devices in your kit must be
                                            connected to a 2.4 GHz Wi-Fi network
                                            (5Ghz networks are not supported).
                                        </li>
                                        <li>
                                            <span class="card__underline"
                                                >Power:</span
                                            >
                                            The devices in your kit need power
                                            and WiFi to operate. None of the
                                            devices in your kit will work as
                                            advertised without access to WiFi.
                                        </li>
                                        <li>
                                            <span class="card__underline"
                                                >You will need an email
                                                address</span
                                            >, and access to a smart phone,
                                            tablet, or computer to set up and
                                            use these devices as advertised.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ5" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >5. What if I lose power or WiFi?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        The devices in your kit need power and
                                        WiFi to operate as advertised.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ6" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >6. What is the Ring Indoor Camera?
                                    </span>
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Compact plug-in indoor camera that lets
                                        you see, hear and speak to people and
                                        pets from your phone, tablet, or select
                                        Echo device. Easily setup your Indoor
                                        Camera by plugging into a standard
                                        outlet and connecting to Wi-Fi. For
                                        added peace of mind, pair with Alexa to
                                        help you keep an eye on your home.
                                    </p>
                                    <div class="card__group">
                                        <figure class="card__figure">
                                            <picture
                                                class="contain contain--product"
                                                data-src-img="/images/faq/products/ring-indoor-camera.jpg"
                                                data-attr='{ "alt" : "" }'
                                            ></picture>
                                            <figcaption>
                                                Ring Indoor Camera
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ7" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >7. What is the Echo Show 5?
                                    </span>
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Echo Show 5 is a compact smart display
                                        with Alexa. Top features include:
                                    </p>
                                    <ul>
                                        <li>
                                            Smart Home: Voice control
                                            compatible devices or manage them on
                                            the easy-to-use display. Ask Alexa
                                            to show you security cameras,
                                            control lights, and adjust
                                            thermostats.
                                        </li>
                                        <li>
                                            Entertainment: Ask Alexa to show you
                                            movie trailers, TV shows, movies, or
                                            the news. Or listen to radio
                                            stations, podcasts, and audiobooks.
                                        </li>
                                        <li>
                                            Video Calling: Call friends and
                                            family who have the Alexa app, an
                                            Echo device with a screen, or Skype.
                                            Make announcements to other devices
                                            in your home.
                                        </li>
                                        <li>
                                            Daily Tasks: Cook along to
                                            step-by-step recipes. Easily update
                                            to-do lists and calendars. Glance at
                                            weather and traffic on your way out.
                                        </li>
                                    </ul>
                                    <div class="card__group">
                                        <figure class="card__figure">
                                            <picture
                                                class="contain contain--product"
                                                data-src-img="/images/faq/products/echo-show-5.jpg"
                                                data-attr='{ "alt" : "" }'
                                            ></picture>
                                            <figcaption>
                                                Echo Show 5 (5&rdquo; in)
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ8" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >8. What is the Philips Hue Smart
                                        Lightbulb?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Philips Hue smart lightbulbs allow you
                                        to automate your lighting experience and
                                        control your lights from home or away.
                                        You can create light schedules from your
                                        phone or with Alexa and never come home
                                        to a dark house.
                                    </p>
                                    <ul>
                                        <li>
                                            Set the mood with 50,000 shades of
                                            tunable white light
                                        </li>
                                        <li>
                                            Control your Philips Hue Smart
                                            Lights all with just the touch of a
                                            button on your mobile device or by
                                            just asking Alexa
                                        </li>
                                        <li>
                                            Add up to 10 Hue Bluetooth/Zigbee
                                            smart bulbs with the (free) Hue
                                            Bluetooth app
                                        </li>
                                        <li>
                                            Create timers and routines to
                                            automate your entire smart home
                                            lighting setup
                                        </li>
                                    </ul>
                                    <div class="card__group">
                                        <figure class="card__figure">
                                            <picture
                                                class="contain contain--product"
                                                data-src-img="/images/faq/products/Philips-hue-smart-bulb.jpg"
                                                data-attr='{ "alt" : "" }'
                                            ></picture>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ9" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >9. What is the Amazon Smart Plug?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Amazon Smart Plug works with Alexa to
                                        add voice control to any outlet. It
                                        allows you to schedule lights, fans, and
                                        appliances to turn on and off
                                        automatically, or control them remotely
                                        when you're away. Its compact design
                                        keeps your second outlet free. No smart
                                        home hub required&mdash;set up routines
                                        and schedules through the Alexa app
                                        (must be connected to a 2.4 GHz Wi-Fi
                                        network).
                                    </p>
                                    <div class="card__group">
                                        <picture
                                            class="contain contain--product"
                                            data-src-img="/images/faq/products/amazon-smart-plug.jpg"
                                            data-attr='{ "alt" : "Amazon Smart Plug" }'
                                        ></picture>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ10" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >10. How does Alexa protect customer
                                        privacy?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        For information on Alexa and Echo
                                        devices and your privacy, visit
                                        <a
                                            href="https://www.amazon.com/alexaprivacyhub"
                                            target="_blank"
                                            class="link link--inline"
                                            >www.amazon.com/alexaprivacyhub<span
                                                class="link__advisal"
                                            >
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            ></a
                                        >.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ11" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >11. How does Ring protect customer
                                        privacy?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        For information on Ring devices and your
                                        privacy, visit
                                        <a
                                            href="https://shop.ring.com/pages/privacy"
                                            class="link link--inline"
                                            >https://shop.ring.com/pages/privacy<span
                                                class="link__advisal"
                                            >
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            ></a
                                        >.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ12" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >12. Can I use the Amazon Smart Plug
                                        outside?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        No, the Amazon Smart Plug is for indoor
                                        use only.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ13" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >13. What types of products are
                                        compatible with the Amazon Smart
                                        Plug?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Only devices with a mechanical on/off
                                        switch work with Amazon Smart Plug. To
                                        check if your device is compatible, turn
                                        on the device and unplug the power cord
                                        from the outlet. Then plug it back in.
                                        If the device is on and works, it's
                                        compatible with the Amazon Smart Plug.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ14" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >14. How do Alexa and Philips Hue work
                                        together?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        When you connect your Philips Hue Smart
                                        Lights to Alexa, you can turn your smart
                                        lights on and off with your voice or
                                        create routines using the Alexa app to
                                        automatically control them and other
                                        connected devices with a single phrase.
                                        Set your smart lights to brighten ahead
                                        of your alarm to mimic the sunrise and
                                        help you wake up more naturally. You can
                                        also set up Alexa Guard to enable Away
                                        Lighting when Guard is in Away mode (see
                                        <a href="#FAQ21" id="faq-14-alexa-guard">
                                            &lsquo;Alexa Guard&rsquo;
                                        </a> FAQ for more).
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ15" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >15. Can I use the Philips Hue Smart
                                        Lights included in my kit outside?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        No, the Philips Hue Smart Lights
                                        included in this kit are for indoor use
                                        only.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ16" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >16. Do I need a hub for the Philips Hue
                                        Smart Lights included in my kit?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        No, the Philips Hue Smart Lights
                                        included in your kit can connect to
                                        Alexa directly through the Amazon Echo
                                        Show device included in your kit using
                                        Bluetooth. If you decide to connect more
                                        than 10 Philips Hue Smart Lights using
                                        Bluetooth, you will need to upgrade to
                                        an Amazon Echo device with a Zigbee Hub
                                        built in (like the Amazon Echo Show (2nd
                                        Gen) or Amazon Echo Plus). For best
                                        results, your Philips Hue Smart Lights
                                        should be in the same room as your
                                        compatible Amazon Echo device.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ17" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >17. How many Bluetooth-enabled Philips
                                        Hue smart lights can I connect to
                                        Alexa?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        You can add up to 10 Bluetooth-enabled
                                        Philips Hue smart lights to Alexa
                                        without a Zigbee hub. To add more than
                                        10, you will need to upgrade to a
                                        Philips Hue Zigbee hub, or an Amazon
                                        Echo device with a Zigbee hub built in
                                        (like the Amazon Echo Show (2nd Gen) or
                                        Amazon Echo Plus). For best results,
                                        your Philips Hue smart lights should be
                                        in the same room as your compatible
                                        Amazon Echo device.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ18" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >18. How do Alexa and Ring work
                                        together?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        When you connect your Ring Indoor Camera
                                        to Alexa, you can view live video feeds
                                        from your camera(s) on your Amazon Echo
                                        Show 5.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ19" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >19. How does &lsquo;Away
                                        lighting&rsquo; work?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        With Away Lighting, Alexa automatically
                                        turns your smart lighting on and off to
                                        make it look like your home while
                                        you&rsquo;re away. Alexa uses machine
                                        learning to determine the right lighting
                                        activity for your home based on lighting
                                        usage across customers. Just set Guard
                                        to Away mode and Alexa will do the rest.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ20" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >20. Are there any subscription fees
                                        required?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content" tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Subscription plans are required to
                                        access some features like cloud storage
                                        for Ring cameras. These plans are called
                                        Ring protect Basic/Plus, and not
                                        required for use of the devices for
                                        motion alerts, Live View and two-way
                                        talk. To learn more about these plans
                                        and pricing, visit
                                        <a
                                            href="https://shop.ring.com/pages/protect-plans"
                                            id="faq-protect-plans"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            https://shop.ring.com/pages/protect-plans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>

                                        or
                                        <a
                                            href="http://amazon.com/ringprotectplans"
                                            id="faq-ring-protect-plans"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            http://amazon.com/ringprotectplans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                    <p>
                                        Additional features are available
                                        through Alexa Guard Plus, a recently
                                        launched subscription service which
                                        gives you hands-free access to an
                                        Emergency Helpline, Smart Alerts about
                                        activity and other potential emergencies
                                        in your home while you're away, and
                                        features to deter potential intruders.
                                        <a
                                            href="https://amazon.com/alexaguard"
                                            id="faq-20-alexaguard"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            Learn more at amazon.com/alexaguard
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ21" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >21. What is Alexa Guard?
                                    </span>
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Guard is an Alexa feature that helps you
                                        keep your home and family safe. When you
                                        set Guard to Away mode, if an Amazon
                                        Echo device, including the Amazon Echo
                                        Show device included in your kit,
                                        detects the sound of smoke alarms,
                                        carbon monoxide alarms, or glass
                                        breaking, Alexa can send you Smart
                                        Alerts, via notifications to your phone.
                                        If you have a Ring or ADT Pulse security
                                        system, Alexa can also arm your system
                                        when you set Guard to Away mode, and you
                                        can opt to forward Smart Alerts to your
                                        security provider. And if you have
                                        connected smart lights, or a smart plug
                                        connected to a lamp, Alexa can
                                        automatically turn them on and off when
                                        Guard is in Away mode, to make it look
                                        like someone is home.
                                    </p>
                                    <p>
                                        For more information, direct customers
                                        to visit
                                        <a
                                            href="https://www.amazon.com/alexaguard"
                                            id="faq-alexa-guard"
                                            target="_blank"
                                            class="link"
                                        >
                                            www.amazon.com/alexaguard
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ22" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >22. What is the Ring Protect
                                        plan?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        Ring Protect Plans (Basic or Plus)
                                        unlock additional features for those who
                                        want them. Features for each plan are
                                        here:
                                        <a
                                            href="https://shop.ring.com/pages/protect-plans or http://amazon.com/ringprotectplans"
                                            id="faq-22-ring-protect-plan"
                                            target="_blank"
                                            class="link"
                                        >
                                            https://shop.ring.com/pages/protect-plans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                        or
                                        <a
                                            href="http://amazon.com/ringprotectplans"
                                            id="faq-22-ring-protect-plan-alt"
                                            target="_blank"
                                            class="link"
                                        >
                                            http://amazon.com/ringprotectplans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ23" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >23. How much does Ring Protect
                                        Cost?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        There are two Ring Protect Plan Options,
                                        &lsquo;Basic&rsquo; and
                                        &lsquo;Plus&rsquo;. Basic is $3/month or
                                        $30 per year, and Plus costs $10 per
                                        month or $100 per year.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ24" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >24. Is the Ring Protect plan required
                                        for use of my Ring products?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy">
                                    <p>
                                        No. Your Ring products provide their
                                        standard features (instant alerts, live
                                        view, two-way talk, and so on) without
                                        any subscription. Ring Protect Plans
                                        simply offer additional features for
                                        those who want them.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ25" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >25. Can I try Ring Protect before I
                                        subscribe?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Ring offers a 30-day trial of Ring
                                        Protect Plus begins when you first set
                                        up your Ring Video Doorbell or Camera,
                                        (or Alarm &ndash; not included in this
                                        TV Offer).
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ26" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >26. How do I sign up for a Ring Protect
                                        Plan?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Visit
                                        <a
                                            href="https://ring.com/"
                                            id="faq-26-ring-website"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            Ring.com
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                        and navigate to the &lsquo;Protect
                                        Plans&rsquo; tab in the navigation menu
                                        at the top of the screen, or visit
                                        <a
                                            href="https://shop.ring.com/pages/protect-plans"
                                            id="faq-26-ring-protect-plans"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            https://shop.ring.com/pages/protect-plans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                        or
                                        <a
                                            href="http://amazon.com/ringprotectplans"
                                            id="faq-26-amazon-ring-protect-plans"
                                            target="_blank"
                                            class="link link--inline"
                                        >
                                            http://amazon.com/ringprotectplans
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ27" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >27. Do Ring devices work with multiple
                                        users?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Yes. You are able to make subsidiary or
                                        shared accounts with other users that
                                        will allow them limited control over
                                        your Ring devices. Once you've completed
                                        setting up your Ring device in your app,
                                        you will be the sole account Owner. As
                                        the account Owner, you have control over
                                        all of the settings on your Ring
                                        devices. If you want to use multiple
                                        electronic devices (tablet, another
                                        phone, etc.) to control your Ring
                                        devices, download the Ring app onto the
                                        additional devices and use the same
                                        login and password you use to login to
                                        the Ring app.
                                    </p>
                                    <p>
                                        You can give a Shared User the ability
                                        to view one or more of the devices on
                                        your Ring account. You can grant or
                                        revoke Shared User access at any time.
                                        In order to be added as a Shared User
                                        the person must have their own separate
                                        Ring account and use their own email and
                                        password to login. If you have multiple
                                        Ring devices, you must add the Shared
                                        User to each device individually.
                                    </p>
                                    <p>
                                        To learn more about this, visit this
                                        help page from
                                        <a
                                            href="https://www.Ring.com"
                                            id="faq-27-ring-website"
                                            target="_blank"
                                            class="link"
                                        >
                                            www.Ring.com
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            >
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ28" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >28. How do I set up Alexa
                                        Routines?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Alexa Routines are useful for making
                                        several things happen with a single
                                        request. You can set up a morning or
                                        evening routine for yourself or a loved
                                        one with Alexa. For example, you could
                                        have Alexa turn on the lights, read the
                                        news, and announce any appointments on
                                        the calendar for the day.
                                    </p>
                                    <p>
                                        To set up a Routine, follow the steps
                                        below:
                                    </p>
                                    <ol>
                                        <li>
                                            Open the Alexa app and open the
                                            navigation panel in the bottom right
                                            corner.
                                        </li>
                                        <li>
                                            Tap Routines, then tap the Plus (+)
                                            icon in the top right corner to
                                            create a new routine.
                                        </li>
                                        <li>
                                            Choose a time to set, how often to
                                            repeat the routine, what action you
                                            want Alexa to take, and what you
                                            want Alexa to say.
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ29" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >29. Does Alexa have accessibility
                                        features?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Alexa continues to open possibilities
                                        and new ways to experience the world.
                                        Alexa&rsquo;s accessibility features are
                                        helping people be more connected, more
                                        entertained, and more independent. These
                                        features include:
                                    </p>
                                    <ul>
                                        <li>
                                            <span class="card__strong"
                                                >Closed captioning, and Alexa
                                                captioning:
                                            </span>
                                            allow you to see captions for audio
                                            content and Alexa&rsquo;s responses
                                            on the Echo Show screen.
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >Preferred speaking rate:
                                            </span>
                                            Is Alexa talking too fast or too
                                            slowly? You can ask Alexa to adjust
                                            the speaking rate to your
                                            preference.
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >Tap to Alexa:
                                            </span>
                                            On supported Echo devices, once you
                                            enable Tap to Alexa, you can use
                                            Alexa without your voice by tapping
                                            the touchscreen to access helpful
                                            features like the weather, news,
                                            timers, and other information.
                                            <ul>
                                                <li>
                                                    <span class="card__strong"
                                                        >Calling and messaging
                                                        without speech:</span
                                                    >
                                                    Once Tap to Alexa is enabled
                                                    on your Echo Show device,
                                                    Alexa can be used to make
                                                    calls and send messages
                                                    without speech. It's a
                                                    useful tool for people with
                                                    speech impairments, or even
                                                    for those not wanting to
                                                    disturb others around them
                                                    by speaking too loudly.
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >Real Time Text: </span
                                            >feature that adds a live, real-time
                                            chat feed during Alexa calls, and
                                            Drop Ins made from Echo Show
                                            devices. When Real Time Text is on,
                                            a keyboard pops up on the screen,
                                            enabling customers to type text
                                            which appears in real time on both
                                            parties' screens. This feature makes
                                            it easier for customers with speech
                                            impairments, or for customers who
                                            are deaf or hard of hearing, to
                                            communicate with their contacts by
                                            typing during a call.
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >Show and Tell:
                                            </span>
                                            Show and Tell helps people who are
                                            blind or low vision use any Echo
                                            Show to identify common packaged
                                            food goods that are hard to
                                            distinguish by touch, such as canned
                                            or boxed foods. You can simply say,
                                            "Alexa, what am I holding?" or
                                            "Alexa, what&rsquo;s in my hand?" to
                                            get started. Alexa will provide
                                            verbal and audio cues to help you
                                            place the item in front of the
                                            device&rsquo;s camera.
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >VoiceView Screen Reader:
                                            </span>
                                            When enabled, VoiceView allows those
                                            who are blind or have impaired
                                            vision to use gestures to navigate
                                            the device while VoiceView reads
                                            aloud the actions made on screen.
                                        </li>
                                        <li>
                                            <span class="card__strong"
                                                >Screen magnifier:
                                            </span>
                                            The Screen Magnifier feature allows
                                            people with low vision to zoom
                                            in/out and pan to enlarge items on
                                            the screen for improved visibility.
                                        </li>
                                    </ul>
                                    <p>
                                        Learn more about these features and more
                                        by visiting the FAQs section on
                                        <a
                                            href="https://www.buyalexatvoffer.com/"
                                            id="faq-29-alexa-features"
                                        >
                                            www.BuyAlexaTVoffer.com</a
                                        >
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ30" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >30. Can I &ldquo;mute&rdquo; or disable
                                        the camera on my Echo device?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        Yes. You can turn the camera and
                                        microphones off with one press of a
                                        button. Also, the built-in camera
                                        shutter allows you to easily cover the
                                        camera for additional piece of mind. For
                                        more information on Echo devices and
                                        your privacy, visit
                                        <a
                                            href="https://www.amazon.com/alexaprivacyhub"
                                            id="faq-30-alexa-privacy"
                                            target="_blank"
                                            class="link"
                                        >
                                            www.amazon.com/alexaprivacyhub
                                            <span class="link__advisal">
                                                <span class="link__container"
                                                    >Opens in a new window</span
                                                ></span
                                            > </a
                                        >.
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ31" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >31. Where can I order additional
                                        accessories/products?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        You can purchase additional products and
                                        accessories online from
                                        <a
                                            href="https://www.GetAlexaStarterKit.com"
                                            id="faq-31-alexa-starter-kit"
                                        >
                                            www.GetAlexaStarterKit.com
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </li>

                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ32" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >32. What payment methods do you
                                        accept?</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <p>
                                        We accept all major credit cards: VISA,
                                        MASTERCARD, AMERICAN EXPRESS and
                                        DISCOVER. You can also place your order
                                        through PayPal (online
                                        only).
                                    </p>
                                    <p>
                                        We do not accept checks or money orders
                                        at this time.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li
                            class="card"
                            itemscope
                            itemprop="mainEntity"
                            itemtype="https://schema.org/Question"
                        >
                            <button id="FAQ33" class="card__item card__tab">
                                <div class="card__title">
                                    <span itemprop="name"
                                        >33. Technical Specifications</span
                                    >
                                    <span class="card__corner">
                                        <span class="card__icon"></span>
                                    </span>
                                </div>
                            </button>
                            <div
                                itemscope
                                itemprop="acceptedAnswer"
                                itemtype="https://schema.org/Answer"
                                class="card__item card__content"
                                tabindex="0"
                            >
                                <div itemprop="text" class="card__copy copy">
                                    <dl>
                                        <dt>Echo Show 5</dt>
                                        <dd>
                                            <picture
                                                class="contain contain--diagram-echoshow5"
                                                data-src-img="/images/faq/diagrams/echo-show-5.jpg"
                                                data-attr='{ "alt" : "", "role" : "presentation" }'
                                            ></picture>
                                            <table class="chart">
                                                <tr>
                                                    <td>Weight</td>
                                                    <td>
                                                        14.5 oz (410 grams)
                                                        <em
                                                            >Actual size and
                                                            weight may vary by
                                                            manufacturing
                                                            process</em
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Display</td>
                                                    <td>
                                                        5.5&rdquo; touchscreen
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Camera</td>
                                                    <td>
                                                        1MP camera with built-in
                                                        shutter
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Wi-Fi connectivity</td>
                                                    <td>
                                                        Dual-band Wi-Fi supports
                                                        802.11a/b/g/n/ac Wi-Fi
                                                        networks. Does not
                                                        support connecting to
                                                        ad-hoc (or peer-to-peer)
                                                        Wi-Fi networks.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Bluetooth connectivity
                                                    </td>
                                                    <td>
                                                        Advanced Audio
                                                        Distribution Profile
                                                        (A2DP) support for audio
                                                        streaming from your
                                                        mobile device to Echo
                                                        Show 5 or from Echo Show
                                                        5 to your Bluetooth
                                                        speaker. Audio/Video
                                                        Remote Control Profile
                                                        (AVRCP) for voice
                                                        control of connected
                                                        mobile devices.
                                                        Hands-free voice control
                                                        is not supported for Mac
                                                        OS X devices. Bluetooth
                                                        speakers requiring PIN
                                                        codes are not supported.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Audio</td>
                                                    <td>
                                                        Full range 1.65&rdquo;
                                                        built-in speaker. 3.5 mm
                                                        stereo audio output for
                                                        use with external
                                                        speakers (audio cable
                                                        not included)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Alexa App</td>
                                                    <td>
                                                        The Alexa App is
                                                        compatible with Fire OS,
                                                        Android, and iOS
                                                        devices.
                                                        <a
                                                            href="https://www.amazon.com/gp/help/customer/display.html?nodeId=GDHB98S32QPQ5H4Y"
                                                            id="faq-25-echoshow5-os-support"
                                                            target="_blank"
                                                            class="link"
                                                        >
                                                            Supported operating
                                                            systems
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Setup Technology</td>
                                                    <td>
                                                        Amazon Wi-Fi simple
                                                        setup enables customers
                                                        to connect smart devices
                                                        to their Wi-Fi network
                                                        in a few easy steps.
                                                        Wi-Fi simple setup is
                                                        another way Alexa is
                                                        always getting smarter.
                                                        <a
                                                            href="https://www.amazon.com/gp/help/customer/display.html/?nodeId=GMPKVYDBR223TRPY"
                                                            id="faq-25-echoshow5-setup-tech"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Echo Show 5 Wi-Fi Setup"
                                                        >
                                                            Learn more about
                                                            Wi-Fi simple setup
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </dd>
                                        <dt>Ring Indoor Camera</dt>
                                        <dd>
                                            <table class="chart">
                                                <tr>
                                                    <td>
                                                        Average install time
                                                    </td>
                                                    <td>5 minutes</td>
                                                </tr>
                                                <tr>
                                                    <td>Video</td>
                                                    <td>
                                                        1080p HD, Live View,
                                                        Night Vision
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Field of view</td>
                                                    <td>
                                                        140&deg; diagonal,
                                                        115&deg; horizontal,
                                                        60&deg; vertical
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Audio</td>
                                                    <td>
                                                        Two-way audio with noise
                                                        cancellation
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Power</td>
                                                    <td>
                                                        Plug into standard power
                                                        outlet
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Internet requirements
                                                    </td>
                                                    <td>
                                                        Requires high speed
                                                        internet
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Connectivity</td>
                                                    <td>
                                                        802.11 b/g/n Wi-Fi
                                                        connection @ 2.4 GHz
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Operating conditions
                                                    </td>
                                                    <td>
                                                        -5&deg;F to 113&deg;F
                                                        (-20&deg;C to 45&deg;C)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Available colors</td>
                                                    <td>White, Black</td>
                                                </tr>
                                                <tr>
                                                    <td>Mounting base</td>
                                                    <td>
                                                        Integrated mounting
                                                        base/stand with
                                                        adjustable angle. Can
                                                        sit freestanding or
                                                        mount to a wall.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Dimensions</td>
                                                    <td>
                                                        1.81 in. x 1.81 in. x
                                                        2.95 in. (46 mm x 46 mm
                                                        x 75 mm)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Box includes</td>
                                                    <td>
                                                        Indoor Cam, power supply
                                                        cable (6.5 ft.), user
                                                        manual, security
                                                        sticker, screws and wall
                                                        anchors
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        Warranty and service
                                                    </td>
                                                    <td>
                                                        <a
                                                            href="https://shop.ring.com/pages/warranty"
                                                            id="faq-25-ringindoorcam-warranty"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Ring Indoor Cam 1-Year Limited Warranty and Service"
                                                        >
                                                            1-year limited
                                                            warranty and service
                                                            included.
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                        <a
                                                            href="https://shop.ring.com/pages/terms"
                                                            id="faq-25-ringindoorcam-terms"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Ring Indoor Cam Terms"
                                                        >
                                                            Use of Security
                                                            Cameras is subject
                                                            to the terms found
                                                            here.
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                        <a
                                                            href="https://shop.ring.com/pages/licenses"
                                                            id="faq-25-ringindoorcam-license"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Ring Indoor Cam License Information"
                                                        >
                                                            License information
                                                            can be found here.
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Support</td>
                                                    <td>
                                                        <a
                                                            href="https://support.ring.com/hc/en-us/sections/360007351751-General-Information"
                                                            id="faq-25-ringindoorcam-support"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Ring Indoor Cam Support"
                                                        >
                                                            Click here to view
                                                            more information on
                                                            the Security Cameras
                                                            support page.
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Ring Protect Plan</td>
                                                    <td>
                                                        By purchasing, you
                                                        authorize us to charge
                                                        your default card or
                                                        another card on file
                                                        when you attach the
                                                        subscription to a
                                                        device.
                                                        <a
                                                            href="https://www.amazon.com/b?node=21076924011"
                                                            id="faq-25-ringindoorcam-protect-plan"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Ring Indoor Cam Subscription Features"
                                                        >
                                                            Learn more about
                                                            subscription
                                                            features and
                                                            additional terms and
                                                            conditions.
                                                            <span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Generation</td>
                                                    <td>
                                                        Ring Indoor Cam &ndash;
                                                        1st Generation (2019
                                                        release)
                                                    </td>
                                                </tr>
                                            </table>
                                        </dd>
                                        <dt>Amazon Smart Plug</dt>
                                        <dd>
                                            <table class="chart">
                                                <tr>
                                                    <td>Size</td>
                                                    <td>
                                                        3.2&rdquo; x 1.5&rdquo;
                                                        x 2.2&rdquo; (80 mm x 38
                                                        mm x 57 mm)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Weight</td>
                                                    <td>
                                                        3.5 oz. (98 grams)
                                                        <em
                                                            >Actual size and
                                                            weight may vary by
                                                            manufacturing
                                                            process</em
                                                        >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Electrical Ratings</td>
                                                    <td>
                                                        Input: 100-120VAC, 60Hz
                                                        15A Max Output: 15A Max
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Network Connectivity
                                                    </td>
                                                    <td>
                                                        2.4 GHz only, 802.11
                                                        b/g/n. Does not support
                                                        5GHz networks or
                                                        connecting to ad-hoc (or
                                                        peer-to-peer) Wi-Fi
                                                        networks.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Use</td>
                                                    <td>
                                                        For indoor use only.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Integrations</td>
                                                    <td>
                                                        Amazon Smart Plug is
                                                        optimized for simple
                                                        setup and exclusive use
                                                        with Alexa. Amazon Smart
                                                        Plug does not support
                                                        other voice assistants
                                                        or smart hubs.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Alexa App</td>
                                                    <td>
                                                        The Alexa app is
                                                        compatible with Fire OS,
                                                        Android, and iOS
                                                        devices. A list of
                                                        <a
                                                            href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201602060"
                                                            id="faq-25-amazonsmartplug-alexa-app"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Amazon Smart Plug Supported Operating Systems"
                                                        >
                                                            supported operating
                                                            systems can be found
                                                            here.<span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Warranty and Service
                                                    </td>
                                                    <td>
                                                        <a
                                                            href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201014520"
                                                            id="faq-25-amazonsmartplug-warranty"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Amazon Smart Plug 1-Year Limited Warranty and Service"
                                                        >
                                                            1-year limited
                                                            warranty and
                                                            service.<span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                        <a
                                                            href="https://www.amazon.com/gp/help/customer/display.html?nodeId=201566380"
                                                            id="faq-25-amazonsmartplug-terms"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Amazon Smart Plug Terms"
                                                        >
                                                            Use of Amazon Smart
                                                            Plug is subject to
                                                            the terms found
                                                            here.<span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Included in the Box</td>
                                                    <td>
                                                        Amazon single-socket
                                                        3-prong Wi-Fi plug,
                                                        Quick Start Guide.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Setup Technology</td>
                                                    <td>
                                                        Amazon Wi-Fi simple
                                                        setup enables customers
                                                        to connect smart devices
                                                        to their Wi-Fi network
                                                        in a few easy steps.
                                                        Wi-Fi simple setup is
                                                        another way Alexa is
                                                        always getting smarter.
                                                        Learn more
                                                        <a
                                                            href="https://www.amazon.com/wifisimplesetup/faq"
                                                            id="faq-25-amazonsmartplug-setup-technology"
                                                            target="_blank"
                                                            class="link"
                                                            aria-label="Amazon Smart Plug Wi-Fi Setup"
                                                        >
                                                            here.<span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Customer Service</td>
                                                    <td>
                                                        Amazon's Customer
                                                        Service team is
                                                        available 24/7 at the
                                                        <a
                                                            href="https://www.amazon.com/help/amazonsmartplug"
                                                            id="faq-25-amazonsmartplug-support"
                                                            target="_blank"
                                                            class="link"
                                                        >
                                                            Amazon Smart Plug
                                                            support page.<span
                                                                class="link__advisal"
                                                            >
                                                                <span
                                                                    class="link__container"
                                                                    >Opens in a
                                                                    new
                                                                    window</span
                                                                ></span
                                                            >
                                                        </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </dd>
                                        <dt>Philips Hue BLE Lights - White Ambiance (2)</dt>
                                        <dd>
                                            <table class="chart">
                                                <tr>
                                                    <td>Size</td>
                                                    <td>
                                                        2 Bulbs
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Color</td>
                                                    <td>
                                                        White Ambiance
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Pattern</td>
                                                    <td>
                                                        Smart Bulb
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Product Dimensions</td>
                                                    <td>
                                                        2.4" x 2.4" x 4.3" (inches)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Item Shape</td>
                                                    <td>
                                                        a19
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Light Source</td>
                                                    <td>
                                                        LED
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Special Features</td>
                                                    <td>
                                                        50,000 Shades of White, 16,000,000 Colors, Instant On, Dimmable	
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Voltage
                                                    </td>
                                                    <td>
                                                        120 Volts
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Wattage</td>
                                                    <td>
                                                        10 Watts
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Luminous Flux</td>
                                                    <td>
                                                        800 Lumen
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Item Package Quantity</td>
                                                    <td>
                                                        1
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Certification</td>
                                                    <td>
                                                        Energy Star
                                                    </td>
                                                </tr>
                                            </table>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </li>
                    </ul>
                                                    </div>
                    </div>
                </div>
            </div>
        </main>

</asp:Content>