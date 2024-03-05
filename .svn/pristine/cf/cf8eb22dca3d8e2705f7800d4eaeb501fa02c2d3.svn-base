(function (global) {
    if ("app" in global) {
        const paypal = app.createContext(app);
        const queries = app.createContext(app);

        paypal.addProperties({
            sizes: ["20x1", "8x1", "1x4", "1x1"],
            convertRatio: function (size) {
                if (this.isString(size)) {
                    return size.replace("x", "/");
                }
            },
            banners: paypal.toArray(
                document.querySelectorAll(".paypal-credit-banner__placeholder")
            ),
            updateBanner: function (banner, options) {
                if (
                    this.isObject(options) &&
                    this.sizes.indexOf(options.size) !== -1
                ) {
                    banner.style.setProperty(
                        "--arp",
                        this.convertRatio(options.size)
                    );

                    const widget = banner.querySelector("[data-pp-message]");
                    if (this.elementExists(widget)) {
                        widget.dataset.ppStyleRatio = options.size;
                    }
                }
            },
            updateBanners: function (options) {
                this.banners.forEach(function (banner) {
                    paypal.updateBanner(banner, options);
                });
            }
        });

        queries.addProperties({
            desktop: matchMedia("(min-width: 769px)"),
            tablet: matchMedia("(min-width: 301px) and (max-width: 768px)"),
            mobile: matchMedia("(max-width: 300px)")
        });

        const paypalMediaQueries = app.createContext(app);

        paypalMediaQueries.addProperties({
            paypal: paypal,
            queries: queries,
            to20x1: function (mql) {
                if (mql.matches) {
                    this.paypal.updateBanners({
                        size: "20x1"
                    });
                }
            },
            to8x1: function (mql) {
                if (mql.matches) {
                    this.paypal.updateBanners({
                        size: "8x1"
                    });
                }
            },
            to1x4: function (mql) {
                if (mql.matches) {
                    this.paypal.updateBanners({
                        size: "1x4"
                    });
                }
            },
            to1x1: function (mql) {
                if (mql.matches) {
                    this.paypal.updateBanners({
                        size: "1x1"
                    });
                }
            },
            init: function () {
                this.to20x1(this.queries.desktop);
                this.to8x1(this.queries.tablet);
                this.to1x1(this.queries.mobile);
            },
            events: function () {
                this.queries.desktop.addListener(this.to20x1.bind(this));
                this.queries.tablet.addListener(this.to8x1.bind(this));
                this.queries.mobile.addListener(this.to1x1.bind(this));
            }
        });

        paypalMediaQueries.init();
        paypalMediaQueries.events();
    }
})(window);
