(function (global) {
    if ("app" in global) {
        app.require(["defer"], function () {
            const view = app.createContext(app.defer);
            const product = app.createContext(app.defer);
            const media = app.createContext(app.defer);

            view.hasObserve(function () {
                Observe({
                    selector: ".view--observe",
                    inRange: function (entry) {
                        entry.classList.add("view--in-view");
                    },
                });
            });

            media.addProperties({
                root: document.querySelector(".media"),
                hasSource: function () {
                    return media.isString(media.getSource(element));
                },
                getSource: function (element) {
                    return element.dataset.srcIframe;
                },
                updateSource: function (element, id) {
                    const source = media.getSource(element);
                    return source.replace(/(\d{9})/, id);
                },
                getId: function (element) {
                    return element.dataset.videoId;
                },
                getIframe: function (element) {
                    return element.querySelector("iframe");
                },
                hasVimeo: function () {
                    return "Vimeo" in global;
                },
                setVimeo: function (iframe) {
                    let result = false;
                    if (media.hasVimeo() && media.elementExists(iframe)) {
                        result = new Vimeo.Player(iframe);
                    }
                    return result;
                },
                getCurrentButton: function (button) {
                    const lastSelectedButton = media.root.querySelector(".button--is-selected");
                    if (media.elementExists(lastSelectedButton)) {
                        lastSelectedButton.classList.remove("button--is-selected");
                    }
                    button.classList.add("button--is-selected");
                },
                updateVideo: function (id) {
                    if (media.isString(id)) {
                        const source = media.updateSource(media.video, id);

                        if (media.vimeo) {
                            media.vimeo
                                .loadVideo(id)
                                .then(media.playVideo)
                                .catch(function (error) {
                                    console.log(error);
                                });
                        } else {
                            const iframe = media.getIframe(media.video);
                            if (media.elementExists(iframe)) {
                                iframe.src = source;
                            }
                        }
                    }
                },
                playVideo: function () {
                    if (media.isObject(media.vimeo) && !media.isActive && media.isUserPause) {
                        media.vimeo.play();
                    }
                },
                pauseVideo: function () {
                    if (media.isObject(media.vimeo) && media.isActive && media.isUserPlay) {
                        media.vimeo.pause();
                    }
                },
                hasIframe: function (element) {
                    return media.elementExists(media.getIframe(element));
                },
                handleEvents: function () {
                    const buttons = media.root.querySelectorAll("[data-video-id]");

                    media.listen(buttons, function () {
                        const id = media.getId(this);
                        media.getCurrentButton(this);
                        media.updateVideo(id);
                    });

                    if (media.isObject(media.vimeo)) {
                        media.vimeo.on("play", function () {
                            media.isActive = true;
                            media.isUserPlay = true;
                            media.isUserPause = false;
                        });

                        media.vimeo.on("pause", function () {
                            media.isActive = false;
                            media.isUserPlay = false;
                            media.isUserPause = true;
                        });
                    }
                },
                processor: (function () {
                    let init = false;

                    return function (element) {
                        if (media.hasIframe(element)) {
                            if (!media.vimeo) {
                                const vimeo = media.setVimeo(media.getIframe(element));
                                media.addProperty("vimeo", vimeo);
                            }

                            if (!media.video) {
                                media.addProperty("video", element);
                            }

                            if (!init) {
                                init = true;
                                media.handleEvents();
                            } else {
                                media.playVideo();
                            }
                        } else {
                            setTimeout(media.processor.bind(media, element), 1000);
                        }
                    };
                })(),
            });

            media.hasObserve(function () {
                Observe({
                    selector: ".media__video",
                    inRange: media.processor.bind(media),
                    outRange: media.pauseVideo,
                    unObserve: false,
                    options: {
                        threshold: 1.0,
                    },
                });
            });

            let dispatcher;

            product.addProperties({
                navInterface: app.require(["nav"]),
                group: document.querySelector(".product--group"),
                figure: document.querySelector(".product--figure"),
                list: document.querySelector(".product--list"),
                features: document.querySelectorAll(".product--list li"),
                buttons: document.querySelectorAll(".product--figure .slide__thumbnail"),
                prime: "product--is-primed",
                state: "product__is-selected", 
                setPrime: function () {
                    product.list.classList.add("product--is-primed");
                    const thumbnail = product.carousel.getCurrentThumbnail();
                    product.selectFeature.call(thumbnail);
                    if (product.navInterface) {
                        app.nav.hide();
                    }
                },
                unsetPrime: function () {
                    product.list.classList.remove("product--is-primed");
                    product.toggleFeatures();
                    if (product.navInterface) {
                        app.nav.show();
                    }
                },
                endInteractionCallback: function (callback) {
                    if (product.isFunction(callback)) {
                        clearTimeout(dispatcher);
                        dispatcher = setTimeout(callback, 300);
                    }
                },
                carousel: Slide.into(
                    document.querySelector(".product--figure .slide__into"),
                    {
                        thumbnails: document.querySelector(".product--figure .slide__thumbnails"),
                    },
                    function () {
                        return this;
                    }
                ),
                toggleFeatures: function (element) {
                    product.toArray(product.features).forEach(function (feature) {
                        if (feature === element) {
                            feature.classList.add(product.state);
                        } else {
                            feature.classList.remove(product.state);
                        }
                    });
                },
                selectFeature: function () {
                    const label = this.getAttribute("aria-labelledby");
                    if (product.isString(label)) {
                        const element = document.getElementById(label);
                        if (product.elementExists(element)) {
                            product.toggleFeatures(element);
                        }
                    }
                },
                navigateCarousel: function () {
                    const index = parseInt(this.dataset.slideIndex);
                    product.carousel.goto(index);
                },
                toggleButtons: function (id) {
                    product.toArray(product.buttons).forEach(function (button) {
                        const label = button.getAttribute("aria-labelledby");
                        if (label === id) {
                            product.navigateCarousel.call(button);
                        }
                    });
                },
                handleButtons: function () {
                    product.listen(product.buttons, product.navigateCarousel, "mouseover");
                    product.listen(product.buttons, product.navigateCarousel, "focus");
                },
                handleFeatures: function () {
                    product.listen(
                        product.features,
                        function (event) {
                            const tagName = event.target.tagName;
                            if (tagName !== "BUTTON") {
                                product.toggleFeatures(this);
                                product.toggleButtons(this.id);
                            }
                        },
                        "mouseover"
                    );
                },
                handleModal: function () {
                    const details = document.querySelector(".product--has-details");
                    if (product.elementExists(details) && product.elementExists(product.group)) {
                        const xhr = new XMLHttpRequest();
                        xhr.addEventListener("load", function () {
                            const response = this;

                            if (response.status === 200) {
                                const modal = document.createElement("div");
                                modal.classList.add("product__modal");
                                modal.classList.add("modal");
                                modal.innerHTML = response.responseText;
                                product.group.appendChild(modal);

                                const program = product.requestResource("/js/product-details.js", "script");
                            }
                        });
                        xhr.addEventListener("error", function (response) {
                            console.log("Something went wrong when trying to get product details: ", response);
                        });
                        xhr.open("GET", "/ProductDetails");
                        xhr.send();
                    }
                },
                handleCarousel: function () {
                    product.carousel.watch(function (index) {
                        const self = this;

                        product.endInteractionCallback(function () {
                            const thumbnail = self.selectThumbnail(index);
                            if (thumbnail) {
                                product.selectFeature.call(thumbnail);
                            }
                        });
                    });
                },
            });

            product.hasObserve(function () {
                Observe({
                    selector: ".view--product .copy__group",
                    inRange: product.setPrime,
                    outRange: product.unsetPrime,
                    unObserve: false,
                    options: {
                        threshold: 0.5,
                    },
                });

                Observe({
                    selector: ".view--product",
                    inRange: function () {
                        product.handleFeatures();
                        product.handleButtons();
                        product.handleCarousel();
                        product.handleModal();
                    },
                });
            });

            app.addProperty("product", product);
        });
    }
})(window);
