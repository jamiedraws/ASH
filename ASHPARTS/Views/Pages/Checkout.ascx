<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<section aria-label="Review order and checkout" class="view form form--checkout section defer defer--from-top">
    <div class="view__in section__in defer__progress">
        <% using (Html.BeginForm()) { %>
            <div class="form__group">
                <div class="form__row view">
                    <div id="cart" class="view__anchor"></div>
                    <h2 class="form__title">Items In Cart</h2>
                    <div class="form__review">
                        <%= Html.Partial("OrderFormReviewTable") %>
                        <input type="hidden" id="RUSHQty_Select" name="RUSHQty_Select" value="0" />
                        <label class="checkbox-with-image">
                            <span class="checkbox-with-image__checkbox-text">
                                <input type="checkbox" id="insureCheckbox" data-code="RUSH" data-code-toggle="true" data-eflex="draw" style="display: none;">
                                <span class="checkbox-with-image__text">
                                    <strong>Yes! I would like to add Rush Shipping for $9.99.</strong>
                                    <span>Due to high demand, standard shipping time is 7 – 10 business days.</span>
                                    <span>Get your order in just 3 business days with Rush Shipping.</span>
                                </span>
                            </span>
                            <picture class="contain contain--rush-shipping-badge" data-src-img="/images/ASHPARTS/rush-shipping-badge.png" data-attr='{ "alt" : "Rush Shipping" }'>
                            </picture>
                        </label>
                        <em class="form__instructions"><strong>NOTE:</strong> Orders with Rush Shipping <strong>CANNOT</strong> be sent to a PO Box.</em>
                    </div>
                </div>

                <div class="form__row view">
                    <h2 class="form__title">Enter Payment And Billing Information</h2>
                    <div class="form__vse view">
                        <div id="vse-error" class="view__anchor"></div>
                        <strong class="form__instructions">
                            <abbr title="Asterisks can appear beside the form field name and can apply to both text fields and drop down fields.">*</abbr><%= LabelsManager.Labels["RequiredFieldDisclaimer"] %>
                        </strong>
                        <div class="vse" data-vse-scroll>
                            <%= Html.ValidationSummary("The following errors have occured:") %>
                        </div>
                    </div>

                    <div class="form__group">
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
                <div class="form__row">
                    <div class="form__accept-offer">
                        <div class="form__actions">
                            <button id="AcceptOfferButton" name="acceptOffer" type="submit" class="button">
                                <span>Review Your Order</span>
                            </button>
                        </div>
                        <picture data-src-img="/shared/images/PositiveSSL_tl_trans.png" data-attr='{ "alt" : "Secure Site SSL Encryption" }' class="contain contain--ssl center-margin">
                        </picture>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

    </section>
        