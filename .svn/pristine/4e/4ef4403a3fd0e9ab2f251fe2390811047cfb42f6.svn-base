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

    .card__icon {
      display: none;
    }
  </style>
</noscript>

<main aria-labelledby="main-title" class="view">
    <div id="main" class="view__anchor"></div>
    <div class="view__in">
      <div class="copy copy--article">
      <h2 id="main-title">Frequenty Asked Questions</h2>

      <ul class="copy__cards" aria-label="FAQ" itemscope itemtype="https://schema.org/FAQPage">

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ1" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">1. What is included in the Alexa smart home starter kit?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>The Alexa smart home starter kit includes: 1) (1) Amazon Echo Show 5, 2) (1) Ring Video Doorbell (2nd Gen), 3) (1) Ring Indoor Camera, 4) (2) Philips Hue white ambiance smart bulbs and, as an added bonus, you'll also receive (1) Amazon Smart Plug plus FREE standard shipping.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ2" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">2. What are the key features/benefits of the Alexa smart home starter kit?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>The Alexa smart home starter kit makes it easy to have a truly smart home with all of the convenience, security and peace of mind that comes with it. Your kit is simple to set up and easy to use!  You'll gain visibility both outside and inside your home, even if you aren't there; you'll be able to control and automate your home's connected lighting as well as accomplish routine tasks simply by voice command, remotely with your smartphone or by being completely automated.  Plus, this exclusive TV offer will save you over 30% off MSRP!</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ3" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">3. Can I use the Amazon Smart Plug outside?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>No, the Amazon Smart Plug is for indoor use only.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ4" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">4. What types of products are compatible with the Amazon Smart Plug?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>Only devices with a mechanical on/off switch work with Amazon Smart Plug. To check if your device is compatible, turn on the device and unplug the power cord from the outlet. Then plug it back in. If the device is on and works, it's compatible with the Amazon Smart Plug.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ5" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">5. How do Alexa and Philips Hue work together?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>When you connect your Philips Hue Smart Lights to Alexa, you can turn your smart lights on and off with your voice or create routines using the Alexa app to automatically control them and other connected devices with a single phrase. Set your smart lights to brighten ahead of your alarm to mimic the sunrise and help you wake up more naturally. You can also set up Alexa Guard to enable Away Lighting when Guard is in Away mode (see FAQ 12 for more). </p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ6" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">6. Can I use the Philips Hue Smart Lights included in my kit outside?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>No, the Philips Hue Smart Lights included in this kit are for indoor use only.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ7" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">7. Do I need a hub for the Philips Hue Smart Lights included in my kit?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>No, the Philips Hue Smart Lights included in your kit can connect to Alexa directly through the Amazon Echo Show device included in your kit using Bluetooth. If you decide to connect more than 10 Philips Hue Smart Lights using Bluetooth, you will need to upgrade to an Amazon Echo device with a Zigbee Hub built in (like the Amazon Echo Show (2nd Gen) or Amazon Echo Plus). For best results, your Philips Hue Smart Lights should be in the same room as your compatible Amazon Echo device.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ8" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">8. How many Bluetooth-enabled Philips Hue smart lights can I connect to Alexa?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>You can add up to 10 Bluetooth-enabled Philips Hue smart lights to Alexa without a Zigbee hub. To add more than 10, you will need to upgrade to a Philips Hue Zigbee hub, or an Amazon Echo device with a Zigbee hub built in (like the Amazon Echo Show (2nd Gen) or Amazon Echo Plus). For best results, your Philips Hue smart lights should be in the same room as your compatible Amazon Echo device.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ9" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">9. What kind of WiFi do I need?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>Amazon Smart Plug and the Ring devices in your kit must be connected to a 2.4 GHz Wi-Fi network (5Ghz networks are not supported).</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ10" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">10. What if I lose power or WiFi?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>The devices in your kit need power and WiFi to operate. Only the Ring Video Doorbell is battery operated. All other devices in your kit must be plugged into a power source. None of the devices in your kit will work as advertised without access to WiFi.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ11" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">11. How do Alexa and Ring work together?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>When you connect your Ring Video Doorbell or Ring Indoor Camera to Alexa, you can view live video feeds from your camera(s) on your Amazon Echo Show 5. Additionally, when enabled, your Amazon Echo Show device can act as a doorbell extender, alerting you when your doorbell is pressed by saying &ldquo;someone is at the front door&rdquo; and showing a live video feed from your Ring Video Doorbell.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ12" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">12. What is Alexa Guard?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>Guard is an Alexa feature that helps you keep your home and family safe. When you set Guard to Away mode, if an Amazon Echo device, including the Amazon Echo Show device included in your kit, detects the sound of smoke alarms, carbon monoxide alarms, or glass breaking, Alexa can send you Smart Alerts, via notifications to your phone. If you have a Ring or ADT Pulse security system, Alexa can also arm your system when you set Guard to Away mode, and you can opt to forward Smart Alerts to your security provider. And if you have connected smart lights, like the Philips Hue Smart Lights included in your kit, Alexa can automatically turn them on and off when Guard is in Away mode, to make it look like someone is home.</p>
              <p>For more information, visit <a href="http://www.amazon.com/alexaguard" id="faq-amazon-guard-link" target="_blank">www.amazon.com/alexaguard</a></p>
              <ol>
                <li>
                  <span itemprop="name">How does 'Away lighting' work?</span><br>
                  <span itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                    <span itemprop="text">
                      With Away Lighting, Alexa automatically turns your smart lighting on and off to make it look like you're home while you're away. Alexa uses machine learning to determine the right lighting activity for your home based on lighting usage across customers. Just set Guard to Away mode and Alexa will do the rest.
                    </span>
                  </span>
                </li>
              </ol>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ13" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">13. Are there any subscription fees required?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>Subscription plans are required to access some features like cloud storage for Ring cameras. These plans are called Ring protect Basic/Plus, and not required for use of the devices for motion alerts, Live View and two-way talk. To learn more about these plans and pricing, visit <a id="faq-ring-plan-link" href="https://shop.ring.com/pages/protect-plans" target="_blank">https://shop.ring.com/pages/protect-plans</a> or <a  id="faq-amazon-ring-plan-link" href="http://amazon.com/ringprotectplans" target="_blank">http://amazon.com/ringprotectplans</a></p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ14" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">14. Can I &ldquo;mute&rdquo; or disable the camera on the Amazon Echo Show device included in my kit?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>Yes. You can turn the camera and microphones off with one press of a button. Also, the built-in camera shutter allows you to easily cover the camera for additional piece of mind.  For more information on Echo devices and your privacy, visit <a id="faq-amazon-privacy-link" href="http://www.amazon.com/alexaprivacyhub" target="_blank">www.amazon.com/alexaprivacyhub</a>.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ15" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">15. How does Alexa protect customer privacy?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>For information on Alexa and Echo devices and your privacy, visit <a id="faq-amazon-privacy-link-2" href="http://www.amazon.com/alexaprivacyhub" target="_blank">www.amazon.com/alexaprivacyhub</a>.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ16" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">16. How does Ring protect customer privacy?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy">
              <p>For information on Ring devices and your privacy, visit <a id="faq-ring-privacy-link" href="https://shop.ring.com/pages/privacy" target="_blank">https://shop.ring.com/pages/privacy</a>.</p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ17" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">17. How do I set up Alexa Routines?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy copy">
              <p>Alexa Routines are useful for making several things happen with a single request. You can set up a morning or evening routine for yourself or a loved one with Alexa. For example, you could have Alexa turn on the lights, read the news, and announce any appointments on the calendar for the day. To set up a Routine, follow the steps below:</p>
              <ol>
                <li>Open the Alexa app and open the navigation panel in the bottom right corner.</li>
                <li>Tap Routines, then tap the Plus (+) icon in the top right corner to create a new routine.</li>
                <li>Choose a time to set, how often to repeat the routine, what action you want Alexa to take, and what you want Alexa to say.</li>
              </ol>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ18" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">18. Does Alexa have accessibility features?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy copy">
              <p>Alexa continues to open possibilities and new ways to experience the world. Alexa's accessibility features are helping people be more connected, more entertained, and more independent. These features include:</p>
              <ul>
                <li><strong>Closed captioning, and Alexa captioning:</strong> allow you to see captions for audio content and Alexa's responses on the Echo Show screen.
                  <ul>
                     <li><a href="https://www.amazon.com/b/ref=ods_afe_hp_htcc_ft?node=21213726011" id="faq-how-to-close-caption" target="_blank">How to use Closed Captioning</a></li>
                     <li><a href="https://www.amazon.com/b/ref=ods_afe_hp_htac_ft?node=21213728011" id="faq-how-to-alexa-caption" target="_blank">How to use Alexa Captioning</a></li>
                  </ul>
                </li>
                <li>
                  <strong>Preferred speaking rate:</strong> Is Alexa talking too fast or too slowly? You can ask Alexa to adjust the speaking rate to your preference. <a href="https://www.amazon.com/b/ref=ods_afe_hp_htps_ft?node=21213729011" target="_blank" id="how-to-use-speaking-rate">How to use preferred speaking rate</a>
                </li>
                <li>
                  <strong>Tap to Alexa:</strong> On supported Echo devices, once you enable Tap to Alexa, you can use Alexa without your voice by tapping the touchscreen to access helpful features like the weather, news, timers, and other information. <a href="https://www.amazon.com/b/ref=ods_afe_shp_httta_ft?node=21213735011" target="_blank" id="how-to-interact-no-speaking">How to interact with alexa without speaking</a>
                </li>
                <li>
                  <strong>Calling and messaging without speech:</strong> Once Tap to Alexa is enabled on your Echo Show device, Alexa can be used to make calls and send messages without speech. It's a useful tool for people with speech impairments, or even for those not wanting to disturb others around them by speaking too loudly.
                </li>
                <li>
                   <strong>Real Time Text:</strong> feature that adds a live, real-time chat feed during Alexa calls, and Drop Ins made from Echo Show devices. When Real Time Text is on, a keyboard pops up on the screen, enabling customers to type text which appears in real time on both parties' screens. This feature makes it easier for customers with speech impairments, or for customers who are deaf or hard of hearing, to communicate with their contacts by typing during a call. <a href="https://www.amazon.com/b/ref=ods_afe_shp_htrtt_ft?node=21341312011" target="_blank" id="how-to-use-real-time">How to use Real Time Text</a>
                </li>
                <li>
                  <strong>Show and Tell:</strong> Show and Tell helps people who are blind or low vision use any Echo Show to identify common packaged food goods that are hard to distinguish by touch, such as canned or boxed foods. You can simply say, "Alexa, what am I holding?" or "Alexa, what's in my hand?" to get started. Alexa will provide verbal and audio cues to help you place the item in front of the device's camera. <a href="https://www.amazon.com/b/ref=ods_afe_vp_htst_ft?node=21213731011" target="_blank" id="how-to-show-tell">How to use Show and Tell</a>
                </li>
                <li>
                  <strong>VoiceView Screen Reader:</strong> When enabled, VoiceView allows those who are blind or have impaired vision to use gestures to navigate the device while VoiceView reads aloud the actions made on screen. <a href="https://www.amazon.com/b/ref=ods_afe_vp_htsr_ft?node=21213727011" target="_blank" id="how-to-use-voiceview">How to use VoiceView</a>
                </li>
                <li>
                  <strong>Screen magnifier:</strong> The Screen Magnifier feature allows people with low vision to zoom in/out and pan to enlarge items on the screen for improved visibility. <a href="https://www.amazon.com/b/ref=ods_afe_vp_htsm?node=21213730011" target="_blank" id="how-to-use-magnifier">How to use screen magnifier</a>
                </li>
              </ul>
              <p>
                Learn more about these features and more by visiting <a href="http://www.amazon.com/AlexaAccessibility" target="_blank">Amazon.com/AlexaAccessibility</a>
              </p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ19" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">19. Do Ring devices work with multiple users?</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
            <div itemprop="text" class="card__copy copy">
              <p>Yes. You are able to make subsidiary or shared accounts with other users that will allow them limited control over your Ring devices. </p>
              <p>Once you've completed setting up your Ring device in your app, you will be the sole account Owner. As the account Owner, you have control over all of the settings on your Ring devices. If you want to use multiple electronic devices (tablet, another phone, etc.) to control your Ring devices, download the Ring app onto the additional devices and use the same login and password you use to login to the Ring app.</p>
              <p>You can give a Shared User the ability to view one or more of the devices on your Ring account. You can grant or revoke Shared User access at any time. In order to be added as a Shared User the person must have their own separate Ring account, and use their own email and password to login. If you have multiple Ring devices, you must add the Shared User to each device individually.</p>
              <p>To learn more about this, visit this <a href="https://support.ring.com/hc/en-us/articles/211018223-Controlling-Ring-Devices-through-Multiple-Devices-or-Sharing-Control-with-Other-Users" target="_blank" id="faq-ring-help-link">help page from Ring.com</a></p>
            </div>
          </div>
        </li>

        <li class="card" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
          <button id="FAQ20" class="card__item card__tab">
            <div class="card__title">
              <span itemprop="name">20. Technical Specifications</span>
              <span class="card__corner">
                <span class="card__icon"></span>
              </span>
            </div>
          </button>
          <div itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer" class="card__item card__content">
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
                                <em>Actual size and weight
                                may vary by
                                manufacturing process</em>
                            </td>
                        </tr>
                        <tr>
                            <td>Display</td>
                            <td>5.5&rdquo; touchscreen</td>
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
                <dt>Echo Show 8</dt>
                <dd>
                    <picture
                        class="contain contain--diagram-echoshow8"
                        data-src-img="/images/faq/diagrams/echo-show-8.jpg"
                        data-attr='{ "alt" : "", "role" : "presentation" }'
                    ></picture>
                    <table class="chart">
                        <tr>
                            <td>Weight</td>
                            <td>
                                36.6 oz (1037 grams)
                                <em>Actual size and weight
                                may vary by
                                manufacturing process.</em>
                            </td>
                        </tr>
                        <tr>
                            <td>Display</td>
                            <td>8.0&rdquo; touch screen</td>
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
                                Show 8 or from Echo Show
                                8 to your Bluetooth
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
                                2.0&rdquo; (52 mm) neodymium
                                speakers with passive
                                bass radiator
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
                                    id="faq-25-echoshow8-os-support"
                                    target="_blank"
                                    class="link"
                                    aria-label="Echo Show 8 Supported Operating Systems"
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
                                    id="faq-25-echoshow8-setup-tech"
                                    target="_blank"
                                    class="link"
                                    aria-label="Echo Show 8 Wi-Fi Setup"
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
                                140&deg; diagonal, 115&deg;
                                horizontal, 60&deg; vertical
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
                                -5&deg;F to 113&deg;F (-20&deg;C to
                                45&deg;C)
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
                                Ring Indoor Cam &ndash; 1st
                                Generation (2019
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
                                3.2&rdquo; x 1.5&rdquo; x 2.2&rdquo; (80
                                mm x 38 mm x 57 mm)
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
                                    > </a
                                >
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
                                    > </a
                                >
                            </td>
                        </tr>
                    </table>
                </dd>
                  <dt>Philips Hue Smart Lights</dt>
                                        <dd>
                                            <table class="chart">
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
                                                    <td>Warranty Description</td>
                                                    <td>
                                                        3 Years
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
</main>

</asp:Content>