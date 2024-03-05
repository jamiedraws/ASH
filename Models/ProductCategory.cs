using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dtm.Framework.ClientSites;
using Dtm.Framework.ClientSites.Web;
using Dtm.Framework.Base.Models;

namespace ASH.Models
{
    public class ProductCategory
    {
        public readonly string QueryName;
        public readonly string PageCode;
        public readonly string CategoryCode;
        public readonly string OfferCode;
        public ProductCategory(string categoryCode = null, string offerCode = null, string queryName = null, string pageCode = null)
        {
            CategoryCode = categoryCode ?? "ASHPARTS";
            OfferCode = offerCode ?? "ASHPARTS";
            QueryName = queryName ?? "pc";
            PageCode = pageCode ?? "ProductDetailPage";
            Category = DtmContext.CampaignCategories.FirstOrDefault(cc => cc.Code == CategoryCode);
            HasCategory = Category != null;

        }

        public CategoryView Category { get; private set; }
        public bool HasCategory { get; private set; }

        public List<CampaignProductView> GetProducts()
        {
            var campaignProducts = DtmContext.CampaignProducts
                .Where(cp => cp.CategoryIndexer.Has(CategoryCode));

            if (!DtmContext.IsStage)
            {
                campaignProducts = campaignProducts
                    .Where(cp => cp.PropertyIndexer["isLive"] != "false");
            }

            return campaignProducts.ToList();
        }
    }
}