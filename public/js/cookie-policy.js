function getCookie(name) {
    var cookie_name = name + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(cookie_name) === 0) {
            return c.substring(cookie_name.length, c.length);
        }
    }
    return false;
};
function dropCookie(value, expiryDays) {
    setCookie('cookieControl', value, expiryDays);
};
function setCookie(name, value, expiry_days) {
    var d = new Date();
    d.setTime(d.getTime() + (expiry_days*24*60*60*1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = name + "=" + value + ";" + expires + ";path=/";
    return getCookie(name);
};
function createCookie(name,value,days) {
    if (days) {
      var date = new Date();
      date.setTime(date.getTime()+(days*24*60*60*1000));
      var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
    document.cookie = name+"="+value+expires+"; path=/";
}
function eraseCookie(name) {
    createCookie(name,"",-1);
}
     
function ipLookUp () {
    if(authorised == false)
    {
        /*
        alert(sGeobytesCountry);
        $.get("http ://ipinfo.io", function(response) {
            console.log(response.city, response.country);
        }, "jsonp");*/
        
        $.ajax('https://extreme-ip-lookup.com/json')
        .then(
            function success(response) {
                if(response.continent == "Europe" && !getCookie('cookiepolicy'))
                {
                    $(".cookie-policy-alert").css("display", "block");
                    $(".cookie-accept-btn").click(function(){
                        setCookie('cookiepolicy', true, 1);
                        $(".cookie-policy-alert").css("display", "none");
                    });
                }
            },
    
            function fail(data, status) {

                console.log('Request failed.  Returned status of',
                            status);
            }
        );
    }
    
}
ipLookUp();