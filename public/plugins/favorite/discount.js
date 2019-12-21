(function($){
    'use strict';

    /**
     * 
     * @param {*} el 
     * @param {*} settings 
     */
    function DiscountElement(el, settings)
    {
        this.el = el;
        this.settings = {
            discounts: [],
            clickListener: null, 
        };

        $.extend(this.settings, settings);

        // add all discounts element 
        var parent = this;

        this.settings.discounts.forEach(item => {
            parent.addDiscountElement(item);    
        });

        return this;
    }

    /**
     * 
     * @param {*} discounts : discount element
     */
    DiscountElement.prototype.addDiscountElement = function(discount)
    {
        var html = "" + 
                "<li>" +
                    "<a>" +
                        "<div class='row favorite-discount-item'>" + 
                            "<div class='company-logo'> " + 
                                "<div class='image-container'> " +
                                    (discount.company_logo != null ? ("<img class='logo-image' src='" + asset_url + "/" + discount.company_logo + "'>") : "") +                            
                                "</div>" + 
                            "</div>" +
                            "<div class='discount-content-container'>" +
                                "<div class='discount-title'>" + discount.title + "</div>"
                                "<div class='discount-content'>" + discount.description + "</div>"
                            "</div>" +
                        "</div>" +
                    "</a>" +
                "</li>";
        
        var newEL = $(html);
        var parent = this;

        newEL.appendTo(this.el);
        newEL.click(function(event){
            // if setting include click listener, trigger click notification listener
            if(parent.settings.clickListener != null)
                parent.settings.clickListener( discount );
        });
    }

    /**
     * 
     * @param {*} settings 
     */
    $.fn.discounts = function(settings){

        return new DiscountElement($(this), settings);
    };
}(jQuery));