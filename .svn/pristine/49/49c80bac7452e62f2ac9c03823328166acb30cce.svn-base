(function (global) {
    if ("app" in global) {
        app.require(["product"], function () {
            const productDetail = app.createContext(app.product);

            productDetail.addProperties({
                modal: document.querySelector(".product__modal"),
                links: productDetail.toArray(document.querySelectorAll(".product__link")),
                closeButton: document.querySelector(".product-details__close"),
                articles: productDetail.toArray(document.querySelectorAll(".product-details__article")),
                showModal: function () {
                    this.modal.classList.add("product__modal--is-visible");
                    this.modal.scrollIntoView({ block : "center" });
                },
                hideModal: function () {
                    this.modal.classList.remove("product__modal--is-visible");
                },
                hideArticles: function () {
                    this.articles.forEach(function (article) {
                        article.classList.remove("product-details__article--is-visible");
                    });
                },
                showArticle: function (id) {
                    this.articles.forEach(function (article) {
                        if (article.id === id) {
                            article.classList.add("product-details__article--is-visible");
                        }
                    });
                },
                processor: function () {
                    const self = this;

                    this.listen(this.links, function () {
                        self.hideArticles();
                        self.showArticle(this.id);
                        self.showModal();
                    });

                    if (this.elementExists(this.closeButton)) {
                        this.listen(this.closeButton, this.hideModal.bind(this));
                    }

                    this.list.classList.add("product--has-modal");
                }
            });

            productDetail.processor();
        });        
    }
}(window));