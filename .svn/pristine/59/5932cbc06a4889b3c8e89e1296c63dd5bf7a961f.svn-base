using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Models;
using Dtm.Framework.Models.Ecommerce;


namespace ASH.PageHandlers
{
    public class GlobalPageHandler : PageHandler
    {

        #region " Overrides... "

        public override void PostValidate(ModelStateDictionary modelState)
        {
            if (!modelState.IsValid && DtmContext.Page.IsStartPageType && !string.Equals(DtmContext.PageCode, "PaymentForm", StringComparison.InvariantCultureIgnoreCase))
            {
                modelState.Clear();
            }

            if(DtmContext.OfferCode == "ASH")
            {
                modelState.AddModelError("Form", "Due To Overwhelming Demand, This Offer Is No Longer Available.");
            }

        }

        public override void PageLoaded(HttpRequestBase request, HttpResponseBase response)
        {
            base.PageLoaded(request, response);

            if((string.Equals(DtmContext.Page.PageCode, "ReviewPage", StringComparison.InvariantCultureIgnoreCase) 
                || string.Equals(DtmContext.Page.PageCode, "ProcessPayment", StringComparison.InvariantCultureIgnoreCase)) 
                && Order != null  && Order.OrderStatusId != 3)
            {
                if(string.IsNullOrEmpty(Order.CardType) || string.Equals(Order.CardType, "NONE", StringComparison.InvariantCultureIgnoreCase))
                {
                    var url = string.Format("PaymentForm{0}", DtmContext.ApplicationExtension);
                    if (request.Url != null)
                    {
                        var query = request.Url.Query == null ? string.Empty : request.Url.Query.ToString();

                        url = url + query;
                    }

                    response.Redirect(url);
                }
            }

        }

        public override void PostProcessPageActions()
        {
            //Checking for the pages code based on the main order pages array on line ten.
            if (DtmContext.Page.IsStartPageType)
            {
                Trace.WriteLine("Processing post page actions...");

            }
        }

        public override void PostSetOrderStatus()
        {
            base.PostSetOrderStatus();
            if (DtmContext.Page.IsStartPageType)
            {
                Order.OrderStatusId = 1;
            }
        }

        #endregion
    }
}
