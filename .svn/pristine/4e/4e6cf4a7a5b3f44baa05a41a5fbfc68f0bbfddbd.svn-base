<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/ConfirmationLayout.master" Inherits="System.Web.Mvc.ViewPage<ClientSiteViewData>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%@ Import Namespace="System.Web.Script.Serialization" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<% using (Html.BeginForm()) { %>
    <div class="group">
        <div class="group__row">
            <%= Html.Partial("PayPalBanner") %>
        </div>
        <div class="group__row view">
            <h2 class="view__title">Enter Payment And Billing Information</h2>
            <div class="form__vse view">
                <div id="vse-error" class="view__anchor"></div>
                <strong class="view__abbr">
                    <abbr title="Asterisks can appear beside the form field name and can apply to both text fields and drop down fields.">*</abbr><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %>
                </strong>
                <div class="vse" data-vse-scroll>
                    <%= Html.ValidationSummary("The following errors have occured:") %>
                </div>                    
            </div>

            <div class="group group--form">
                <div class="form__item">
                    <div class="form__scroll">
                        <% Html.RenderPartial("PaymentInfo"); %>
                    </div>
                </div>
                <div class="form__item">
                    <div class="form__scroll">
                        <% 
                            if (DtmContext.Order != null)
                            {

                                var billFullName = DtmContext.Order.BillingFirstName;
                                if (!string.IsNullOrWhiteSpace(DtmContext.Order.BillingLastName))
                                {
                                    billFullName += " " + DtmContext.Order.BillingLastName;
                                }
                                ViewData["BillingFullName"] = ViewData["BillingFullName"] ?? billFullName;
                                ViewData["BillingStreet"] = ViewData["BillingStreet"] ?? DtmContext.Order.BillingStreet;
                                ViewData["BillingStreet2"] = ViewData["BillingStreet2"] ?? DtmContext.Order.BillingStreet2;
                                ViewData["BillingCity"] = ViewData["BillingCity"] ?? DtmContext.Order.BillingCity;
                                ViewData["BillingState"] = ViewData["BillingState"] ?? DtmContext.Order.BillingState;
                                ViewData["BillingZip"] = ViewData["BillingZip"] ?? DtmContext.Order.BillingZip;
                                ViewData["Phone"] = ViewData["Phone"] ?? DtmContext.Order.Phone;
                                ViewData["Email"] = ViewData["Email"] ?? DtmContext.Order.Email;

                                if (!DtmContext.Order.ShippingIsSameAsBilling)
                                {
                                    var shipFullName = DtmContext.Order.ShippingFirstName;
                                    if (!string.IsNullOrWhiteSpace(DtmContext.Order.ShippingLastName))
                                    {
                                        shipFullName += " " + DtmContext.Order.ShippingLastName;
                                    }
                                    ViewData["ShippingFullName"] = ViewData["ShippingFullName"] ?? shipFullName;
                                    ViewData["ShippingStreet"] = ViewData["ShippingStreet"] ?? DtmContext.Order.ShippingStreet;
                                    ViewData["ShippingStreet2"] = ViewData["ShippingStreet2"] ?? DtmContext.Order.ShippingStreet2;
                                    ViewData["ShippingCity"] = ViewData["ShippingCity"] ?? DtmContext.Order.ShippingCity;
                                    ViewData["ShippingState"] = ViewData["ShippingState"] ?? DtmContext.Order.ShippingState;
                                    ViewData["ShippingZip"] = ViewData["ShippingZip"] ?? DtmContext.Order.ShippingZip;
                                }

                            }

                            Html.RenderPartial("ContactInfo"); 
                            %>
                    </div>
                </div>
            </div>
        </div>
        <div class="group__row">
            <div class="form__accept-offer">
                <div class="view__actions">
                    <button id="AcceptOfferButton" name="acceptOffer" type="submit" class="button">
                        <span>Continue</span>
                    </button>
                </div>
                <div class="o-grid--vert--center u-vw--100 u-mar--top @x2-mar">
                    <img src="/shared/images/PositiveSSL_tl_trans.png" alt="SSL" class="u-mar--center u-mar--horz">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {

            //Copy Billing fields to shipping if Shippingcheckbox is not checked 
            $('[name="acceptOffer"]').on('click', function () {

                if (!$('#ShippingIsDifferentThanBilling').is(':checked')) {
                    var fields = ["FirstName", "LastName", "Street", "Street2", "City", "Country", "State", "Zip"];

                    for (var i = 0; i <= fields.length; i++) {

                        var billValue = $('#Billing' + fields[i] + '').val();

                        $('#Shipping' + fields[i] + '').val(billValue);

                    }
                }

                validateForm();
            });

            shippingBox();

            $('#ShippingIsDifferentThanBilling').on('click', function () {
                shippingBox();
            });                        

        });

        function shippingBox() {

            if (!$('#ShippingIsDifferentThanBilling').is(':checked')) {

                $('#shippingInformation').hide();
            }
            else {

                $('#shippingInformation').show();
                if(!$('#shippingInformation').is(':visible')){
                    $('#shippingInformation').css('display', '');
                }
            }
        }
    </script>
<% } %>
    
</asp:Content>
