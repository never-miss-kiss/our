(function ($) {
    if (!$.setCookie) {
        $.extend({
            setCookie: function (c_name, value, exdays) {
                try {
                    if (!c_name) return false;
                    var exdate = new Date();
                    exdate.setDate(exdate.getDate() + exdays);
                    var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
                    document.cookie = c_name + "=" + c_value
                } catch (err) {
                    return ''
                }
                ;
                return ''
            }
        })
    };

    if (!$.getCookie) {
        $.extend({
            getCookie: function (c_name) {
                try {
                    var i, x, y, ARRcookies = document.cookie.split(";");
                    for (i = 0; i < ARRcookies.length; i++) {
                        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
                        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
                        x = x.replace(/^\s+|\s+$/g, "");
                        if (x == c_name) return (y)
                    }
                } catch (err) {
                    return ''
                }
                ;
                return ''
            }
        })
    }
    ;
    if (!$.getCookie) {
        $.extend({
            getCookie: function (c_name) {
                try {
                    var i, x, y, ARRcookies = document.cookie.split(";");
                    for (i = 0; i < ARRcookies.length; i++) {
                        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
                        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
                        x = x.replace(/^\s+|\s+$/g, "");
                        if (x == c_name) return (y)
                    }
                } catch (err) {
                    return ''
                }
                ;
                return ''
            }
        })
    }
})(jQuery);

function _xmbbsSetLoginHtml(data) {
    $('#login').html(data.html)
}

$(function () {
    var cUserId = $.getCookie('cUserId');
    if (cUserId.length == 0) {
        var _iframe = document.createElement('iframe');
        _iframe.style.width = 0;
        _iframe.style.height = 0;
        _iframe.src = 'http://bbs.xiaomi.cn/user/autologin';
        document.body.appendChild(_iframe)
    }
});
