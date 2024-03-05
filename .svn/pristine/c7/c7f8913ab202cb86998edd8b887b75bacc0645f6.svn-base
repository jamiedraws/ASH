const getItemByCode = function (code) {
    const items = _dtmShoppingCart.Items();

    return (
        items.filter(function (item) {
            return item.id === code;
        })[0] || {}
    );
};

const lookupItemQuantity = function (quantityId, defaultQuantity) {
    const item = getItemByCode(quantityId);
    return item.qty ? item.qty : defaultQuantity;
};

function updateButtonQuantity(element) {
    let quantityId = element.dataset["quantityId"],
        quantityModifier = element.dataset["qtyModifier"],
        qtyEle = document.getElementById(quantityId),
        newQuantity = parseInt(qtyEle.value);

    switch (quantityModifier) {
        case "plus":
            newQuantity++;
            break;
        case "minus":
            newQuantity--;
            break;
    }

    return updateInputQuantity(qtyEle, newQuantity);
}

function updateInputQuantity(qtyEle, newQuantity) {
    const minQuantity = parseInt(qtyEle.dataset["minQty"]);
    const maxQuantity = parseInt(qtyEle.dataset["maxQty"]);

    switch (true) {
        case newQuantity <= minQuantity:
            newQuantity = 1;
            break;
        case newQuantity > maxQuantity:
            newQuantity = maxQuantity;
            makeToast("form-response", "Max quantity has been reached.");
            break;
    }

    if (isNaN(newQuantity)) {
        newQuantity = lookupItemQuantity(qtyEle.dataset.itemCode, 1);
    }

    qtyEle.value = newQuantity;

    return newQuantity;
}

function updateSelectQuantity(quantityId, newQuantity) {
    let pdp = document.getElementById(quantityId + "_PDP");
    let select = $("#" + quantityId + "_Select");
    if (quantityId.indexOf("_PDP") > -1) {
        var mainQuantityId = quantityId.split("_PDP")[0];
        document.getElementById(mainQuantityId).value = newQuantity;
        select = $("#" + mainQuantityId + "_Select");
    } else if (pdp) {
        pdp.value = newQuantity;
    }

    if (select.length > 0 && !isNaN(newQuantity)) {
        select.val(newQuantity);
        select.change();
    }
}

function onActionQuantityChange(e) {
    let code = document.getElementById("ActionCode" + e.detail).value,
        qty = parseInt(
            document.getElementById("ActionQuantity" + e.detail).value
        );

    updateQtyState(code, qty);
}

function updateRushQtySelect() {
    if (!document.getElementById("insureCheckbox").checked) {
        document.getElementById("RUSHQty_Select").value = 0;
    } else {
        document.getElementById("RUSHQty_Select").value = 1;
    }
}

function updateQtyState(code, qty) {
    let pdp = document.getElementById(code + "Qty_PDP");
    const plp = document.getElementById(code + "Qty");
    let rushQty = document.getElementById("RUSHQty_Select");

    if (qty === 0 && !rushQty) {
        qty = 1;
        document.getElementById(code + "Qty_Select").value = 1;
    }

    if (rushQty) {
        updateRushQtySelect();
    }

    if (plp) {
        plp.value = qty;
    }

    if (pdp) {
        pdp.value = qty;
    }
}

function customLoadItemState(productCode, qty) {
    if (productCode != "SHIP") {
        updateQtyState(productCode, qty);
    }
}

(function () {
    if ("app" in window) {
        const shoppingCart = app.createContext(app);

        shoppingCart.addProperties({
            buttons: document.querySelectorAll(".delay-input--shopping-cart"),
            enableButtons: function () {
                const buttons = shoppingCart.toArray(shoppingCart.buttons);

                app.require(["defer"], function () {
                    app.defer.enableDelayedButtons(buttons);
                });
            }
        });

        shoppingCart.enableButtons();

        const productQuantities = app.createContext(app);

        productQuantities.addProperties({
            buttons: document.querySelectorAll(".product__form .form__button"),
            inputs: document.querySelectorAll(".product__form .form__input"),
            registerButtons: function () {
                productQuantities.listen(
                    productQuantities.buttons,
                    function () {
                        const newQuantity = updateButtonQuantity(this);
                        updateSelectQuantity(
                            this.dataset.quantityId,
                            newQuantity
                        );
                    }
                );
            },
            registerInputs: function () {
                productQuantities.listen(
                    productQuantities.inputs,
                    function () {
                        updateInputQuantity(this, this.value);
                        updateSelectQuantity(this.id, this.value);
                    },
                    "blur"
                );
            }
        });

        productQuantities.registerButtons();
        productQuantities.registerInputs();
    }
})();
