(function (global) {
    if ("app" in global) {
        const defer = app.createContext(app);
        const order = app.createContext(app);

        defer.addProperties({
            hasObserve: function (callback) {
                if ("Observe" in global) {
                    callback(Observe);
                }
            },
            isAvailable: function (selector, response) {
                let result = response || false;
                if (this.isString(selector)) {
                    const element = document.querySelector(selector);
                    if (this.elementExists(element)) {
                        result = element;
                    }
                }
                return result;
            },
            viewElement: function (config, inRangeCallback, outRangeCallback) {
                if (this.isObject(config)) {
                    let element = this.isAvailable(config.selector);

                    if (element && this.isString(config.state)) {
                        element = this.isAvailable(config.neighbor, element);

                        this.hasObserve(function () {
                            const func = function () {},
                                inRange = inRangeCallback || func,
                                outRange = outRangeCallback || func;

                            Observe({
                                selector: config.selector,
                                inRange: inRange.bind(element, config),
                                outRange: outRange.bind(element, config),
                                unObserve: false
                            });
                        });
                    }
                }
            }
        });

        defer.hasObserve(function () {
            app.require(["lazy"], function () {
                Observe({
                    selector: "[data-src-img]",
                    inRange: function (loadItem) {
                        defer.lazy(loadItem);
                    }
                });

                Observe({
                    selector: "[data-src-iframe]",
                    inRange: function (record) {
                        defer.lazy(record, {
                            tag: "iframe",
                            src: "data-src-iframe",
                            ondemand: true
                        });
                    }
                });
            });
        });

        defer.lock();
        app.addProperty("defer", defer);

        order.addProperties({
            buttons: document.querySelectorAll("[href^='#order']"),
            submit: document.querySelector("#AcceptOfferButton"),
            handleSubmit: function () {
                if (this.elementExists(this.submit)) {
                    this.submit.click();
                }
            },
            init: function () {
                const self = this;

                this.listen(this.buttons, function (event) {
                    event.preventDefault();
                    self.handleSubmit();
                });
            }
        });

        order.init();
        order.lock();
        app.addProperty("order", order);

        if ("_dtm" in global) {
            const error = document.getElementById("vse-error");
            const vse = document.querySelector(".validation-summary-errors");

            if (app.elementExists(error)) {
                _dtm.callbackAlert = function () {
                    error.scrollIntoView();
                };
            }

            if (app.elementExists(vse) && app.elementExists(error)) {
                error.scrollIntoView();
            }
        }

        const form = document.querySelector(".form");
        if (app.elementExists(form)) {
            addEventListener("load", function () {
                form.classList.add("form--is-ready");
                form.classList.add("load-item--success");
            });
        }
    }
})(window);
