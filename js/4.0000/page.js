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
            buttons: document.querySelectorAll("[data-code]"),
            actionCode: document.getElementById("ActionCode0"),
            submit: document.querySelector("#AcceptOfferButton"),
            handleSubmit: function (target) {
                if (
                    this.elementExists(this.submit) &&
                    this.elementExists(this.actionCode)
                ) {
                    this.actionCode.value = target.dataset.code;
                    this.submit.click();
                }
            },
            init: function () {
                const self = this;

                this.listen(this.buttons, function (event) {
                    event.preventDefault();
                    self.handleSubmit(event.target);
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

        const offerCard = app.createContext(app);

        offerCard.addProperties({
            query: matchMedia("(min-width: 330px) and (max-width: 600px)"),
            actors: offerCard.toArray(
                document.querySelectorAll("[data-toggle-actor")
            ),
            listeners: offerCard.toArray(
                document.querySelectorAll("[data-toggle-listener]")
            ),
            text: {
                view: "View Details",
                hide: "Hide Details"
            },
            viewCard: function (actor, id) {
                if (this.elementExists(actor) && this.isString(id)) {
                    const container = actor.closest(
                        "[data-toggle-container='" + id + "']"
                    );

                    if (this.elementExists(container)) {
                        const listener = container.querySelector(
                            "[data-toggle-listener='" + id + "'"
                        );

                        if (this.elementExists(listener)) {
                            const isHidden = listener.classList.contains(
                                "toggle--is-hidden"
                            );

                            if (!isHidden) {
                                listener.scrollIntoView({ block: "center" });
                            } else {
                                container.scrollIntoView({ block: "center" });
                            }
                        }
                    }
                }
            },
            toggleListenerState: function (actor) {
                if (this.elementExists(actor)) {
                    const id = actor.dataset.toggleActor;
                    const listeners = document.querySelectorAll(
                        "[data-toggle-listener='" + id + "']"
                    );

                    if (this.elementExists(listeners)) {
                        this.toArray(listeners).forEach(function (listener) {
                            listener.classList.toggle("toggle--is-hidden");
                        });

                        this.viewCard(actor, id);
                    }
                }
            },
            toggleActorText: function (actor) {
                if (this.elementExists(actor)) {
                    const text = actor.textContent;
                    let response = text;

                    if (text === this.text.view) {
                        response = this.text.hide;
                    } else {
                        response = this.text.view;
                    }

                    actor.textContent = response;
                }
            },
            showListeners: function () {
                this.listeners.forEach(function (listener) {
                    listener.classList.remove("toggle--is-hidden");
                });
            },
            hideListeners: function () {
                this.listeners.forEach(function (listener) {
                    listener.classList.add("toggle--is-hidden");
                });
            },
            changeActorTextToView: function () {
                this.actors.forEach(function (actor) {
                    actor.textContent = offerCard.text.view;
                });
            },
            changeActorTextToHide: function () {
                this.actors.forEach(function (actor) {
                    actor.textContent = offerCard.text.hide;
                });
            },
            updateUI: function (mql) {
                if (mql.matches) {
                    offerCard.changeActorTextToView();
                    offerCard.hideListeners();
                } else {
                    offerCard.showListeners();
                }
            },
            processTask: function () {
                offerCard.listen(offerCard.actors, function () {
                    offerCard.toggleListenerState(this);
                    offerCard.toggleActorText(this);
                });

                offerCard.updateUI(offerCard.query);
                offerCard.query.addListener(offerCard.updateUI);
            }
        });

        offerCard.processTask();
        app.addProperty("offerCard", offerCard);
    }
})(window);
