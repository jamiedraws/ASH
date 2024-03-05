using Dtm.Framework.ClientSites.Web;
using System.Web;

namespace ASH.PageHandlers
{
    public class PaymentFormPageHandler : PageHandler
    {
        #region " Overrides... "
        public override void BeginRequest(HttpRequestBase request, HttpResponseBase response, ref string pageCode)
        {
            base.BeginRequest(request, response, ref pageCode);

            if (DtmContext.Order == null || DtmContext.Order.OrderID == 0)
            {
                var url = string.Format("Index{0}", DtmContext.ApplicationExtension);
                if(request.Url != null)
                {
                    var query = request.Url.Query == null ? string.Empty : request.Url.Query.ToString();

                    url = url + query;
                }
                
                response.Redirect(url);
            }
        }

        #endregion
    }
}
