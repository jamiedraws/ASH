<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="System.Globalization" %>

<%
    var originalProductCodes = ((ViewData["NewOriginalItems"] ?? ViewData["OriginalItems"]) as string ?? string.Empty).Split(',');
    var cartProductCodes = ((ViewData["NewCartItems"] ?? ViewData["CartItems"]) as string ?? string.Empty).Split(',');
    var upgradedFrom = ((ViewData["UpgradedFrom"]) as string ?? string.Empty).Split(',');
    var downgradedFrom = ((ViewData["DowgradedFrom"]) as string ?? string.Empty).Split(',');
    var currentOrderItems = DtmContext.Order.VisibleOrderItems.ToList();
    var showFutureChangesFooter = SettingsManager.ContextSettings["SummaryReviewTable.DisplayMonthlyExtendedPriceFooter", false];
    var showFullPaymentSummaryFooter = SettingsManager.ContextSettings["SummaryReviewTable.DisplayFullPaymentSummaryFooter", false];
    var allItems = currentOrderItems;
    var showSavingsBanner = SettingsManager.ContextSettings["SummaryReviewTable.ShowSavingsBanner", false];
    var colSet = false;
    var surchXProductCode = SettingsManager.ContextSettings["SurchX.ProductCode", "SURCHX"];
    var currentHiddenItems = DtmContext.Order.OrderItems.ToList();

    //Table Columns to Show
    var ShowItemColumn = SettingsManager.ContextSettings["SummaryReviewTable.ShowItemColumn", true];
    var ShowDescriptionColumn = SettingsManager.ContextSettings["SummaryReviewTable.ShowDescriptionColumn", true];
    var ShowQuantityColumn = SettingsManager.ContextSettings["SummaryReviewTable.ShowQuantityColumn", true];
    var ShowSubtotalColumn = SettingsManager.ContextSettings["SummaryReviewTable.ShowSubtotalColumn", true];
    var ShowShippingColumn = SettingsManager.ContextSettings["SummaryReviewTable.ShowShippingColumn", false];

    //Table Label Variables
    var taxRowLabel = SettingsManager.ContextSettings["SummaryReviewTable.TaxRowLabel", "Tax"];
    var orderTotalRowLabel = SettingsManager.ContextSettings["SummaryReviewTable.OrderTotalRowLabel", "Order&nbsp;Total"];
    var subTotalRowLabel = SettingsManager.ContextSettings["SummaryReviewTable.SubTotalRowLabel", "Sub&nbsp;Total"];
    var quantityColumnLabel = SettingsManager.ContextSettings["SummaryReviewTable.QuantityColumnLabel", "Quantity"];
    var itemColumnLabel = SettingsManager.ContextSettings["SummaryReviewTable.ItemColumnLabel", "Item"];
    var descriptionColumnLabel = SettingsManager.ContextSettings["SummaryReviewTable.DescriptionColumnLabel", "Description"];
    var subTotalColumnLabel = SettingsManager.ContextSettings["SummaryReviewTable.SubtotalColumnLabel", "Sub&nbsp;Total"];
    var shippingColumnLabel = SettingsManager.ContextSettings["SummaryReviewTable.ShippingColumnLabel", "S&H"];
    var showSaleTaxLink = SettingsManager.ContextSettings["OrderFormReview.ShowSalesTax", true];
    var showShippingMessage = SettingsManager.ContextSettings["OrderFormReview.ShowShippingMessage", false];
    var textShippingMessage = LabelsManager.Labels["ReviewTableShippingMessageText"] ?? SettingsManager.ContextSettings["OrderFormReview.ShippingMessageText", "Standard ground delivery"];
    var textFutureCharges = LabelsManager.Labels["FutureChargesText"] ?? "Future Charges";

    //Culture info
    var culture = Dtm.Framework.ClientSites.SettingsManager.ContextSettings["SummaryReviewTable.CultureInfo", "en-US"];

    var getFutureChangeLabel = ((Func<KeyValuePair<int, int>, string>)((KeyValuePair<int, int> args) =>
    {
        var additive = args.Key - args.Value;
        var days = (additive + 1) * 30;
        var daysLabel = LabelsManager.Labels["daysLabel"] ?? "";

        switch (args.Key)
        {
            case 1:
                var firstFutureChargeLabel = LabelsManager.Labels["FirstFutureChargeLabel"] != null ? args.Key + LabelsManager.Labels["FirstFutureChargeLabel"] + string.Format(" {0} ", days) + daysLabel : string.Format("1st Payment in {0} days", days);
                return firstFutureChargeLabel;
            case 2:
                var secondFutureChargeLabel = LabelsManager.Labels["SecondFutureChargeLabel"] != null ? args.Key + LabelsManager.Labels["SecondFutureChargeLabel"] + string.Format(" {0} ", days) + daysLabel : string.Format("2nd Payment in {0} days", days);
                return secondFutureChargeLabel;
            case 3:
                var thirdFutureChargeLabel = LabelsManager.Labels["ThirdFutureChargeLabel"] != null ? args.Key + LabelsManager.Labels["ThirdFutureChargeLabel"] + string.Format(" {0} ", days) + daysLabel : string.Format("3rd Payment in {0} days", days);
                return thirdFutureChargeLabel;
            default:
                var thFutureChargeLabel = LabelsManager.Labels["thFutureChargeLabel"] != null ? string.Format("{0}", args.Key) +  LabelsManager.Labels["thFutureChargeLabel"] + string.Format(" {0} ", days) + daysLabel : string.Format("{0}th Payment in {1} days", args.Key, days);
                return thFutureChargeLabel;
        }
    }));

    var getFullPaymentSummaryLabels = ((Func<int, string>)((int labelCount) =>
    {
        var label = "";
        var yourLabel = LabelsManager.Labels["YourLabel"] ?? "";
        switch (labelCount)
        {
            case 2:
                var secondFullPaymentSummaryLabel = LabelsManager.Labels["SecondFullPaymentSummaryLabel"] != null ? yourLabel + LabelsManager.Labels["SecondFullPaymentSummaryLabel"] : "Your 2nd payment is ";
                label = secondFullPaymentSummaryLabel;
                break;
            case 3:
                var thirdFullPaymentSummaryLabel = LabelsManager.Labels["ThirdFullPaymentSummaryLabel"] != null ? yourLabel + LabelsManager.Labels["ThirdFullPaymentSummaryLabel"] : "Your 3rd payment is ";
                label = thirdFullPaymentSummaryLabel;
                break;
            default:
                var thFullPaymentSummaryLabel = LabelsManager.Labels["thFullPaymentSummaryLabel"] != null ? yourLabel + labelCount + LabelsManager.Labels["thFullPaymentSummaryLabel"] : "Your " + labelCount + "th payment is ";
                label = thFullPaymentSummaryLabel;
                break;
        }
        return label;
    }));

    //Set Table Column Number
    var numberOfColumns = 0;
    if (ShowItemColumn)
        numberOfColumns++;
    if (ShowDescriptionColumn)
        numberOfColumns++;
    if (ShowQuantityColumn)
        numberOfColumns++;
    if (ShowSubtotalColumn)
        numberOfColumns++;
    if (ShowShippingColumn)
        numberOfColumns++;

    if (SettingsManager.ContextSettings["SummaryReviewTable.KeepZeroItems", true])
    {
        var newItems = cartProductCodes
             .Where(originalProductCode => DtmContext.Order.VisibleOrderItems.All(oi =>
             {
                 var currentProductCode = originalProductCode;

                 var parentProduct = DtmContext.CampaignProducts.FirstOrDefault(cp => cp.RelatedProducts
                 .Any(rp =>
                 {
                     var isLineItem = rp.IsLineItem;
                     if(isLineItem)
                     {
                         var campaignProduct = DtmContext.CampaignProducts.FirstOrDefault(p => p.CampaignProductId == rp.CampaignProductId);

                         if(campaignProduct != null && campaignProduct.ProductCode.Equals(originalProductCode, StringComparison.InvariantCultureIgnoreCase))
                         {
                             return true;
                         }
                     }


                     return false;

                 }));
                 if (parentProduct != null) //if is line item, use parent product code
                     currentProductCode = parentProduct.ProductCode;

                 var oiProductCode = oi.CachedProductInfo.ProductCode;
                 var downgradeTo = oi.CachedProductInfo.PropertyIndexer["DowngradeTo"] ?? string.Empty;
                 var upgradeTo = oi.CachedProductInfo.PropertyIndexer["UpgradeTo"] ?? string.Empty;
                 //variable set to show/hide a product and its children from the review table.
                 var isHidden = oi.CachedProductInfo.PropertyIndexer["HideProduct"] ?? string.Empty;

                 var oiParentProduct = DtmContext.CampaignProducts.FirstOrDefault(cp => cp.RelatedProducts
                 .Any(rp =>
                 {
                     var isLineItem = rp.IsLineItem;
                     if(isLineItem)
                     {
                         var campaignProduct = DtmContext.CampaignProducts.FirstOrDefault(p => p.CampaignProductId == rp.CampaignProductId);

                         if(campaignProduct != null && campaignProduct.ProductCode.Equals(oi.CachedProductInfo.ProductCode, StringComparison.InvariantCultureIgnoreCase))
                         {
                             return true;
                         }
                     }


                     return false;

                 }));

                 if (oiParentProduct != null) //if OI is line item, then use parent product code and properties
                 {
                     oiProductCode = oiParentProduct.ProductCode;
                     downgradeTo = oiParentProduct.PropertyIndexer["DowngradeTo"] ?? string.Empty;
                     upgradeTo = oiParentProduct.PropertyIndexer["UpgradeTo"] ?? string.Empty;
                     //variable set to show/hide a product and its children from the review table.
                     isHidden = oiParentProduct.PropertyIndexer["HideProduct"] ?? string.Empty;
                 }

                 // compare parent vs parent if both are line items
                 // check if original product exists in current order items
                 return !oiProductCode.Equals(currentProductCode, StringComparison.InvariantCultureIgnoreCase)
                     // check that downgrade to does not exist in current order items
                     && !downgradeTo.Equals(currentProductCode, StringComparison.InvariantCultureIgnoreCase)
                     // ch eck that upgrade to does not exist in current order items
                     && !upgradeTo.Equals(currentProductCode, StringComparison.InvariantCultureIgnoreCase);
             }))
         .ToList();

        if (newItems.Any())
        {
            newItems.ForEach(newOrderItem =>
            {
                var campaignProduct = DtmContext.CampaignProducts.FirstOrDefault(cp => cp.ProductCode == newOrderItem);
                if (campaignProduct != null)
                {
                    allItems.Add(new OrderItem
                    {
                        CampaignProductId = campaignProduct.CampaignProductId,
                        CachedProductInfo = campaignProduct,
                        IsTaxable = campaignProduct.IsTaxable,
                        Description = campaignProduct.ProductName,
                        ProductSku = campaignProduct.ProductSku,
                        AdditionalItemInformation = campaignProduct.DisplayText,
                        Price = campaignProduct.Price,
                        Shipping = campaignProduct.Shipping,
                        Quantity = 0,
                        ReportPrice = campaignProduct.ReportPrice,
                        ExtendedPrice = campaignProduct.ExtendedPrice,
                        TaxExtendedPrice = campaignProduct.TaxExtendedPrice,
                    });
                }
            });
        }
        allItems = allItems.ToLineItems();
    }

    var removedItems = originalProductCodes
    .Where(op => !allItems.Any(i =>
    {
        var currentProductCode = i.CachedProductInfo.ProductCode;
        var parentProduct = DtmContext.CampaignProducts.FirstOrDefault(cp => cp.RelatedProducts
                 .Any(rp =>
                 {
                     var isLineItem = rp.IsLineItem;
                     if(isLineItem)
                     {
                         var campaignProduct = DtmContext.CampaignProducts.FirstOrDefault(p => p.CampaignProductId == rp.CampaignProductId);

                         if(campaignProduct != null && campaignProduct.ProductCode.Equals(currentProductCode, StringComparison.InvariantCultureIgnoreCase))
                         {
                             return true;
                         }
                     }


                     return false;

                 }));
        if (parentProduct != null) //if is line item, use parent product code
            currentProductCode = parentProduct.ProductCode;
        return currentProductCode.Equals(op, StringComparison.InvariantCultureIgnoreCase);
    })
    )
    .ToList();

    var showSurchXFee = currentHiddenItems.Any(oi => oi.CampaignProduct.ProductCode == surchXProductCode);

    var shippingTotal = DtmContext.Order.ShippingCost;
    var subTotal = DtmContext.Order.SubTotal;
    var taxTotal = DtmContext.Order.TotalTax;

    var taxOrderCode = DtmContext.Order.OrderCodes
        .Where(oc => oc.Label == "DigitalRiverTotalTax")
        .Select(oc => oc.Code)
        .FirstOrDefault();
    
    decimal taxOverride = 0;
    if(!string.IsNullOrWhiteSpace(taxOrderCode) && decimal.TryParse(taxOrderCode, out taxOverride))
    {
        taxTotal = taxOverride;
    }


    var orderTotal = shippingTotal + subTotal + taxTotal;

%>

<script type="text/javascript">
    $('html').on('dtm/fwjs', function () {
        // check if using mobile and revert OFRT mode is enabled
        if (Model.IsMobile && _dtm.settings.revertOFRT) {
            // detach from c-brand--table class (hooks into stacked mobile table)
            $('.orderItemsTable').removeClass('c-brand--table');
            // revert the stacked mobile table
            _dtm.update.setResponsiveTable($('.c-brand--table--ofrt-revert'), {
                isReverted: _dtm.settings.revertOFRT,
                numberOfColumns: '<%= numberOfColumns %>' - 1
            });
        }
    });
</script>

<div id="orderItemsPlaceholder">
    <%if (showSavingsBanner)
        { %>
    <% Html.RenderPartial("SavingsBanner");
        }
    %>
    <table id="orderReviewTable" class="orderItemsTable c-brand--table c-brand--table--cart c-brand--form u-vw--100 u-mar--vert" cellpadding="3" cellspacing="0" border="0">
        <thead>
            <tr>
                <%if (ShowItemColumn)
                    {%>
                <th><span><%= LabelsManager.Labels["ReviewTableItemColumn"] %></span></th>
                <%}%>

                <%if (ShowDescriptionColumn)
                    {%>
                <th><span><%=descriptionColumnLabel%></span></th>
                <%}%>

                <%if (ShowQuantityColumn)
                    {%>
                <th align="right"><span><%= LabelsManager.Labels["ReviewTableQuantityColumn"] %></span></th>
                <%}%>

                <%if (ShowSubtotalColumn)
                    {%>
                <th align="right"><span><%= LabelsManager.Labels["ReviewTablePriceColumn"] %></span></th>
                <%}%>

                <%if (ShowShippingColumn)
                    {%>
                <th align="right"><span><%= LabelsManager.Labels["ReviewTableShippingColumn"] %></span></th>
                <%}%>
            </tr>
        </thead>
        <tbody class="orderItemsTableBody">
            <%for (int i = 0; i < allItems.Count; i++)
                {
                    var item = allItems.ElementAt(i);
                    Html.RenderPartial("SummaryReviewTableRow", new ViewDataDictionary
                    {
                        { "OrderItem", item },
                        { "Index", i },
                        { "ShowItem", ShowItemColumn },
                        { "ShowDescription", ShowDescriptionColumn },
                        { "ShowQuantity", ShowQuantityColumn },
                        { "ShowSubtotal", ShowSubtotalColumn },
                        { "ShowShipping", ShowShippingColumn },
                        {"orderCodes", ViewData["orderCodes"] }
                    });
                } %>
        </tbody>
        <tfoot>
            <%
                var rowspan = showSurchXFee ? 5 : 4;

                if (Dtm.Framework.ClientSites.SettingsManager.ContextSettings["SummaryReviewTable.SubtotalRow", true])
                {%>
            <tr>
                <td class="tfoot_td--empty" colspan="<%= numberOfColumns - 2 %>" rowspan="<%=rowspan %>">&nbsp;</td>
                <td class="tfoot_td--label"><%= LabelsManager.Labels["ReviewTableSubTotalFooter"] %></td>
                <td align="right">
                    <div id="SubTotal"><%= subTotal.ToString("C", new CultureInfo(culture))%></div>
                </td>
            </tr>
            <%
                    colSet = true;
                }%>
            <%if (SettingsManager.ContextSettings["SummaryReviewTable.ShowShippingFooter", true])
                {%>
            <tr>
                <%if (!colSet)
                    { %><td colspan="<%= numberOfColumns - 2 %>" rowspan="<%=rowspan %>">&nbsp;</td>
                <%} %>
                <td class="tfoot_td--label"><%= LabelsManager.Labels["ReviewTableShippingFooter"] %></td>
                <td align="right">
                    <div id="ShippingCost"><%= shippingTotal.ToString("C", new CultureInfo(culture))%></div>
                </td>
            </tr>
            <%
                    colSet = true;
                } %>
            <%if (Dtm.Framework.ClientSites.SettingsManager.ContextSettings["SummaryReviewTable.TaxRow", true]
                    && !string.Equals(DtmContext.PageCode, "PaymentForm", StringComparison.InvariantCultureIgnoreCase))
                {%>
            <tr>
                <%if (!colSet)
                    { %><td colspan="<%= numberOfColumns - 2 %>" rowspan="<%=rowspan %>">&nbsp;</td>
                <%} %>
                <td class="tfoot_td--label"><%= LabelsManager.Labels["ReviewTableStateTaxFooter"] %></td>
                <td align="right">
                    <div id="TotalTax"><%= taxTotal.ToString("C", new CultureInfo(culture))%></div>
                </td>
            </tr>
            <%
                    colSet = true;
                } if (showSurchXFee)
                {
                    var surchxProduct = currentHiddenItems.FirstOrDefault(oi => oi.CampaignProduct.ProductCode == surchXProductCode);
                %>
            <tr>
                <%if (!colSet)
                    { %><td colspan="<%=numberOfColumns - 2%>" rowspan="<%=rowspan %>">&nbsp;</td>
                <%} %>
                <td><%= surchxProduct.Description%></td>
                <td align="right">
                    <div id="surchXFee"><%= surchxProduct.Price.ToString("C")%></div>
                </td>
            </tr>
            <%
                    colSet = true;
                } %>
            <%if (Dtm.Framework.ClientSites.SettingsManager.ContextSettings["SummaryReviewTable.OrderTotalRow", true])
                {%>
            <tr>
                <%if (!colSet)
                    { %><td colspan="<%= numberOfColumns - 2 %>" rowspan="<%=rowspan %>">&nbsp;</td>
                <%} %>
                <td class="tfoot_td--label"><%= LabelsManager.Labels["ReviewTableTotalFooter"] %></td>
                <td align="right">
                    <div id="OrderTotal"><%= orderTotal.ToString("C", new CultureInfo(culture))%></div>
                </td>
            </tr>
            <%
                    colSet = true;
                } %>

            <%
                var showAffirmEstimate = false;
                var hasAffirm = SettingsManager.ContextSettings["ExpressCheckout.EnabledProcessorCodes", string.Empty].ToLower().Contains("affirm");
                showAffirmEstimate = SettingsManager.ContextSettings["SummaryReviewTable.OrderTotalRow", true] 
                    && DtmContext.Page.PageCode.ToLower() != "confirmation" 
                    && hasAffirm 
                    && SettingsManager.ContextSettings["Affirm.ShowEstimateSummaryReview", false];

                var affirmEstimateMax = SettingsManager.ContextSettings["Affirm.MaximumPaymentInstallment", 3];
                var affirmEstimateAmountNum = DtmContext.Order.SubTotal / affirmEstimateMax;
                var affirmLearnMoreUrl = SettingsManager.ContextSettings["Affirm.EstimateLearnMoreUrl", "https://www.affirm.com/how-it-works"];
                var affirmEstimateAmount = affirmEstimateAmountNum.ToString("#.00");

                %>
            <%if (showAffirmEstimate)
                {%>
            <tr>
                <td colspan="<%= numberOfColumns - 2 %>" rowspan="<%=rowspan %>">&nbsp;</td>
                
                <td colspan="2" class="tfoot_td--label tfoot_td--span">
                    <%= Html.Partial("AffirmVerbiage", new ViewDataDictionary { { "affirmEstimateAmount", affirmEstimateAmount }}) %>
                </td>      
            </tr>
            <%
                    colSet = true;
                } %>


            <% if (showSaleTaxLink) { %>
            <tr>
                <td colspan="5" class="@print-only-hide">
                    <a href="<%= LabelsManager.Labels["ReviewTableSaleTaxLink"] %>" data-fancybox-url="<%= LabelsManager.Labels["ReviewTableSaleTaxLink"] %>" title="<%= LabelsManager.Labels["ReviewTableSaleTaxTitle"] %>"><%= LabelsManager.Labels["ReviewTableSaleTaxLinkText"] %></a>
                </td>
            </tr>
            <% } %>
            <% if ( showShippingMessage ) { %>
                <tr>
                    <td colspan="5">
                        <%= textShippingMessage %>
                    </td>
                </tr>                
            <% } %>
        </tfoot>
    </table>

    <%if (showFutureChangesFooter || showFullPaymentSummaryFooter)
        {%>            <%
                           var monthlyPayments = new Dictionary<OrderItem, decimal> { };
                           for (int i = 0; i < allItems.Count; i++)
                           {
                               var item = allItems[i];
                               var product = item.CachedProductInfo;
                               var numPayments = product.NumberOfPayments;
                               var isContinuityProduct = product.PropertyIndexer["IsContinuity", false];

                               if (numPayments > 1 && !isContinuityProduct)
                               {
                                   monthlyPayments.Add(item, (decimal)(item.Quantity * (item.ExtendedPrice.HasValue ? item.ExtendedPrice.Value : 0)));
                               }
                           }

                           var monthlyInstallments = new List<decimal>();
                           var numberOfPayments = 0;
                           var monthlyTotal = 0.0M;


                           foreach (KeyValuePair<OrderItem, decimal> payment in monthlyPayments)
                           {

                               numberOfPayments = payment.Key.CachedProductInfo.NumberOfPayments - ((payment.Key.Price) != 0 ? 1 : 0);
                               monthlyTotal = payment.Value / numberOfPayments;

                               for (var i = 0; i < numberOfPayments; i++)
                               {
                                   if (monthlyInstallments.ElementAtOrDefault(i) == 0M)
                                   {
                                       monthlyInstallments.Add(monthlyTotal);
                                   }
                                   else
                                   {
                                       monthlyInstallments[i] += monthlyTotal;
                                   }
                               }
                           }

                           var startingLabelIndex = SettingsManager.ContextSettings["SummaryReviewTable.FutureChangesStartingIndex", 2];
                           var labelCountFullSummary = startingLabelIndex;  
                           var labelCountFutureCharges = startingLabelIndex; 
                        %>

    <%
        var showSubTable = (monthlyInstallments.Any() && monthlyInstallments.Sum() > 0.0M) ? true : false;
        if (showSubTable == true)
        {
            if (showFullPaymentSummaryFooter)
            {%>
            <table class="c-brand--table--cart futureChargesTable" cellpadding="3" cellspacing="0" border="0">
                <thead>
                    <tr>
                        <th colspan="3"><span>Full Payment Summary</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="3">Your 1st payment is <%= subTotal.ToString("C", new CultureInfo(culture))%>
                            <% if (shippingTotal> 0M) { %> + <%=shippingTotal.ToString("C", new CultureInfo(culture))%><%} %>
                            <% if (taxTotal > 0M){ %> + <%=taxTotal.ToString("C", new CultureInfo(culture))%><%} %>
                        </td>
                    </tr>
                    <%
    var orderTotalExtended = DtmContext.Order.OrderTotal + monthlyInstallments.Sum();
    for (int i = 0; i < monthlyInstallments.Count; i++)
    {
        if (monthlyInstallments[i] > 0.0M)
        {
                    %>
                    <tr>
                        <td colspan="3"><%=getFullPaymentSummaryLabels(labelCountFullSummary)%> <%=string.Format("${0:#.00}", monthlyInstallments[i])%></td>
                    </tr>
                         <%labelCountFullSummary++;
        }
    }%>
                    <tr>
                        <td><b>Total Order Amount</b></td>
                        <td><b style="float: right;"><%=orderTotalExtended.ToString("C", new CultureInfo(culture))%></b></td>
                    </tr>
                </tbody>
            </table>
         <%}
    if (showFutureChangesFooter)
    {
        %>
    <table class="c-brand--table--cart futureChargesTable" cellpadding="3" cellspacing="0" border="0">
        <thead>
            <tr>
                <th colspan="2"><span><%=textFutureCharges%></span></th>
            </tr>
        </thead>
        <tbody>
            <%
        for (int i = 0; i < monthlyInstallments.Count; i++)
        {
            if (monthlyInstallments[i] > 0.0M)
            {
                %>
                <tr>
                    <td><%=getFutureChangeLabel(new KeyValuePair<int, int>(labelCountFutureCharges, startingLabelIndex)) %></td>
                    <td align="right" id="installment<%=i%>"><%=string.Format("${0:#.00}", monthlyInstallments[i])%></td>
                </tr>
                    <%labelCountFutureCharges++;
            }
        }%>
        </tbody>
    </table>
      <%}
       }
    }%>


    <%for (int i = 0, count = allItems.Count; i < removedItems.Count; i++, count++)
        {
            var item = removedItems.ElementAt(i);
    %>
    <%=Html.Hidden("ActionCode" + count, item)%>
    <%=Html.Hidden("ActionQuantity" + count, 0)%>
    <% } %>
</div>

<%if (ViewData["NewCartItems"] != null || ViewData["NewOriginalItems"] != null || ViewData["UpgradedFrom"] != null || ViewData["DowngradedFrom"] != null)
    { %>
<script>
<%if (ViewData["NewCartItems"] != null)
    { %>
    __cartItems = "<%=ViewData["NewCartItems"]%>".split(',');
    <%} %>

<%if (ViewData["NewOriginalItems"] != null)
    { %>
    __ogItems = "<%=ViewData["NewOriginalItems"]%>".split(',');
    <%} %>

     <%if (ViewData["UpgradedFrom"] != null)
    { %>
    __upFrom = "<%=ViewData["UpgradedFrom"]%>".split(',');
    <%} %> 

    <%if (ViewData["DowngradedFrom"] != null)
    { %>
    __downFrom = "<%=ViewData["DowngradedFrom"]%>".split(',');
    <%} %> 
</script>
<%} %>
<input type="hidden" name="RemoveExistingItems" value="true" />
