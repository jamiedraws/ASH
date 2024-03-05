(function (global) {
    if ("app" in global) {
        const cart = app.createContext(app);

        const buttons = document.querySelectorAll(".cart");
        const stateClass = "cart--is-empty";

        const getTotalQuantity = function (data) {
            let quantity = 0;
            const items = data.detail.items;

            items.forEach(function (item) {
                let excludeFromCartCount = false;

                const props = item.props;
                props.forEach(function (prop) {
                    if (prop.Key === "ExcludeFromCartCount") {
                        excludeFromCartCount = true;
                    }
                });

                if (!excludeFromCartCount) {
                    quantity = quantity + 1;
                }
            });

            return quantity;
        };

        const updateButtons = function (data) {
            const totalQuantity = getTotalQuantity(data);
            const isEmpty = totalQuantity === 0;

            cart.toArray(buttons).forEach(function (button) {
                if (isEmpty) {
                    button.classList.add(stateClass);
                } else {
                    button.classList.remove(stateClass);
                }
            });
        };

        addEventListener("CartChange", updateButtons);
    }
})(window);
