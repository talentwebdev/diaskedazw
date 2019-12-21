(function($){
    'use strict';

    /**
     * 
     * @param {*} el 
     * @param {*} settings 
     */
    function CompanyElement(el, settings)
    {
        this.el = el;
        this.settings = {
            companies: [],
            clickListener: null, 
        };

        $.extend(this.settings, settings);

        // add all companies element 
        var parent = this;

        this.settings.companies.forEach(item => {
            parent.addNewCompanyElement(item);    
        });

        return this;
    }

    /**
     * 
     * @param {*} companies : company element
     */
    CompanyElement.prototype.addNewCompanyElement = function(company)
    {
        var html = "" + 
                "<li>" +
                    "<a>" +
                        "<div class='row favorite-company-item'>" + 
                            "<div class='company-logo'> " + 
                                "<div class='image-container'> " +
                                    "<img class='logo-image' src='" + asset_url + "/" + company.logo_url + "'>" +                            
                                "</div>" + 
                            "</div>" +
                            "<div class='company-content-container'>" +
                                "<div class='company-title'>" + company.name + "</div>"
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
                parent.settings.clickListener( company );
        });
    }

    /**
     * 
     * @param {*} settings 
     */
    $.fn.companies = function(settings){

        return new CompanyElement($(this), settings);
    };
}(jQuery));