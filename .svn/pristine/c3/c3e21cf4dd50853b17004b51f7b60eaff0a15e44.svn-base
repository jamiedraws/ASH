<%@ Page Language="C#" MasterPageFile="~/ASHPARTS/Views/Layouts/ConfirmationLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.Models.Ecommerce" %>
    <%@ Import Namespace="Dtm.Framework.Base.Enums" %>
    <%@ Import Namespace="Dtm.Framework.ClientSites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    

    <!-- // Bottom Section | Order Table -->
    <section class="view u-pad @mv-u-pad--vert">
        <!--Contact Info-->
        <%
            var removeColumns = string.Empty;
            var addressOptions = new ViewDataDictionary {
                { "showContactInfo", true },
                { "editInfoIndividually", true }
            };

            if (DtmContext.Order != null && DtmContext.Order.OrderItems.Any())
            {
                var hasMultipay = DtmContext.Order.OrderItems.Any(oi => oi.CampaignProduct.NumberOfPayments > 1);
                if (hasMultipay)
                {
                    if (Model.Order.PaymentType == PaymentType.Card)
                    {
                        removeColumns += ",shipping";
                        addressOptions.Add("billingHeader", "Billing/Shipping Address");
                    }
                    else
                    {
                        addressOptions.Add("isEditable", false);
                    }
                }

            }

            addressOptions.Add("removeColumns", removeColumns);

            Html.RenderPartial("GetAddressDetails", Model, addressOptions);


        %>
        <div class="u-pad--top @x2-pad">
            <%
                ViewData["IsConfirmationView"] = true;
                Html.RenderPartial("SummaryReview", Model);
            %>
        </div>

        <div class="form form--checkout">
        <%
            using (Html.BeginForm())
            {
                var digitalRiverCompanyName = SettingsManager.ContextSettings["DigitalRiver.CompanyName", "Digital River globalTech, Inc."];
                var digitalRiverCompanyDisclaimer = SettingsManager.ContextSettings["DigitalRiver.CompanyDisclaimer", string.Empty];
                var digitalRiverPrivacyPolicy = SettingsManager.ContextSettings["DigitalRiver.PrivacyPolicy--Links--", "https://store.digitalriver.com/DRHM/store?Action=DisplayDRPrivacyPolicyPage&SiteID=defaults&Locale=en_US&ThemeID=22100&eCommerceProvider=DR%20globalTech%20Inc."];
                var digitalRiverTermsOfSale = SettingsManager.ContextSettings["DigitalRiver.TermsOfSale--Links--", "https://store.digitalriver.com/DRHM/store?Action=DisplayDRTermsAndConditionsPage&SiteID=defaults&Locale=en_US&ThemeID=22100&eCommerceProvider=DR%20globalTech%20Inc."];
		%>

        <div class="form__actions">
            <label for="TermsAndPolicy" class="checkbox">
                <span class="checkbox__item checkbox">
                    <input data-eflex="draw" type="checkbox" name="TermsAndPolicy" id="TermsAndPolicy" />
                </span>
                <span class="checkbox__item">By submitting my order, I agree to the <a target="_blank" rel="noreferrer noopener" id="digital-river-terms-of-sale-verify" href="<%= digitalRiverTermsOfSale %>" class="link">Terms of Sale<span class="link__advisal"> <span class="link__container">Opens in a new window</span></span></a> and the <a target="_blank" rel="noreferrer noopener" id="digital-river-privacy-policy-verify" href="<%= digitalRiverPrivacyPolicy %>" class="link">Privacy Policy<span class="link__advisal"> <span class="link__container">Opens in a new window</span></span></a> of <%= digitalRiverCompanyName %></span>
            </label>
        </div>

        <div class="form__actions">
            <button aria-describedby="confirmOrderButtonDisclaimer" name="acceptOffer" id="AcceptOffer" type="submit" class="button">
                <span>Submit Your Order</span>
            </button>
        </div>
        <div class="view">
            <div id="vse-error" class="view__anchor"></div>
            <div class="vse" data-vse-scroll>
                <%= Html.ValidationSummary() %>
            </div>
        </div>
        <div id="confirmOrderButtonDisclaimer" class="u-mar--top fn--center"><%= LabelsManager.Labels["OSWEConfirmOrderButtonDisclaimer"] %></div>

        <div class="o-grid--vert--center u-vw--100 u-mar--top @x2-mar">
            <img src="/shared/images/PositiveSSL_tl_trans.png" alt="SSL" class="u-mar--center u-mar--horz">
        </div>

        <%  } %>
        </div>
    </section>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("AcceptOffer").addEventListener("click", function (e) {
                var acceptedTerms = document.getElementById("TermsAndPolicy").checked;
                if (!acceptedTerms) {
                    alert("Please correct the following issues:\nPlease agree to the Terms of Sale and Privacy Policy to Order");
                    e.preventDefault();
                }
            });
        });

        addEventListener("EditPaymentInfo", function () {

            window.location.href ="<%=DtmContext.Domain.FullDomainOfferVersionUrlContext("PaymentForm")%>";

        });

    </script>
</asp:Content>
