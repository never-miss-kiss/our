function notieFun(msg) {
    var s1 = "<div class='modal_full in'><div class='modal-backdrop'></div><div class='modal'><span class='close'></span><h3>" + langgobale[150].string + "</h3><div>",
        s2 = "</div></div></div>";
    $("body").append(s1 + msg + s2);
    $(".modal_full").fadeIn("normal", function () {
        setTimeout(function () {
            $(".modal_full").fadeOut()
        }, 2e3)
    })
}

function createTalkStringPre(uid, uname) {
    return "<div class='model talkmodel'><div class='modelheader'>" + langgobale[167].string + "<a href='/user/detail/miid/" + uid + "' class='talkusername'>" + uname + "</a>" + langgobale[168].string + "......<span class='close'></span></div><div class='modelcontainer'><p><a href='/message/dialog/to_miid/" + uid + "' target='_blank'>" + langgobale[169].string + uname + langgobale[170].string + "</a></p><div class='talkcon'>"
}

var uid = $(".username").attr("u-id"), talkstringpre = createTalkStringPre(uid, $(".username").html());
var talkstringlast = "</div><div class='talkeditor'><textarea id='talkeditor'></textarea><span class='btn J_sent'>" + langgobale[171].string + "</span><span class='J_refresh'>" + langgobale[172].string + "</span></div></div></div>";

function appendTalkcon(obj, uid) {
    $.ajax({
        url: "/message/dialog", data: {to_miid: uid}, type: "POST", dataType: "json", success: function (data) {
            if (data.header.code == 1e5) {
                var d = data.body.list;
                var s = "";
                for (var key in d) {
                    s += '<span class="time">' + key + '</span><ul class="clearfix">';
                    var list = d[key];
                    for (var j = 0, len = list.length; j < len; j++) {
                        var flag = uid == list[j].author_miid ? "l" : "r";
                        s += "<li class='" + flag + "'><div class='wrapdiv'>" + list[j].message + "</div></li>"
                    }
                    s += "</ul>"
                }
                obj.append(talkstringpre + s + talkstringlast);
                $("body").append("<script type='text/javascript' id='editorjs'>UE.getEditor('talkeditor');</script>");
                $("#talkeditor").find("#edui62").css({marginTop: "3px"});
                $(".talkcon")[0].scrollTop = $(".talkcon")[0].scrollHeight
            } else {
                notieFun(data.header.desc)
            }
        }
    })
}

$("body").delegate(".sendmsg", "click", function () {
    if ($(".talkcon").length == 0) {
        appendTalkcon($("body"), uid)
    } else {
        $(".model").show()
    }
});
$("body").delegate(".model .close", "click", function () {
    $(".model").hide();
    UE.getEditor("talkeditor").setContent("")
});
$("body").delegate(".sendfriendmsg", "click", function () {
    var oLi = $(this).parents("li"), name = oLi.find(".user_name").html();
    uid = oLi.attr("fmiid");
    if ($(".talkcon").length == 0) {
        talkstringpre = createTalkStringPre(uid, name);
        appendTalkcon($("body"), uid)
    } else {
        $(".model").find(".talkusername").html(name).attr("href", "/user/detail/miid/" + uid);
        $(".model").find(".modelcontainer p").eq(0).find("a").html(langgobale[169].string + name + langgobale[170].string).attr("href", "/user/detail/miid/" + uid);
        $(".model").show()
    }
});

function refresh() {
    $(".talkcon").html("");
    $.ajax({
        url: "/message/dialog", data: {to_miid: uid}, type: "POST", dataType: "json", success: function (data) {
            if (data.header.code == 1e5) {
                var d = data.body.list, s = "";
                for (var key in d) {
                    s += '<span class="time">' + key + '</span><ul class="clearfix">';
                    var list = d[key];
                    for (var j = 0, len = list.length; j < len; j++) {
                        uid === list[j].author_miid ? "l" : "r";
                        var flag = uid == list[j].author_miid ? "l" : "r";
                        s += "<li class='" + flag + "'><div class='wrapdiv'>" + list[j].message + "</div></li>"
                    }
                    s += "</ul>"
                }
                $(".talkcon").append(s);
                $(".talkcon")[0].scrollTop = $(".talkcon")[0].scrollHeight
            } else {
                notieFun(data.header.desc)
            }
        }
    })
}

$("body").delegate(".J_refresh", "click", function () {
    refresh()
});
$("body").delegate(".J_sent", "click", function () {
    var message = UE.getEditor("talkeditor").getContent();
    if (message) {
        $.ajax({
            url: "/message/sendpm",
            data: {to_miid: uid, message: message},
            type: "POST",
            dataType: "json",
            success: function (data) {
                if (data.header.code == 1e5) {
                    if ($(".talkcon").find("ul").length == 0) {
                        $(".talkcon").append("<span class='time'></span><ul><li class='r'><div class='wrapdiv'>" + message + "</div></li></ul>")
                    } else {
                        $(".talkcon ul:last").append("<li class='r'><div class='wrapdiv'>" + message + "</div></li>")
                    }
                    $(".talkcon").height($(".talkcon").height());
                    $(".talkcon")[0].scrollTop = $(".talkcon")[0].scrollHeight;
                    UE.getEditor("talkeditor").setContent("")
                } else {
                    notieFun(data.header.desc)
                }
            }
        })
    }
});
var userObj = $(".user_name").eq(1);
$(".contain_left .J_sendmsg").on("click", function () {
    var name = userObj.html();
    uid = userObj.attr("u-id");
    modelChange(name, uid)
});
$(".contain_right").delegate(".J_sendmsg", "click", function () {
    var name = $(this).parents(".person").find(".user_name").html();
    uid = $(this).attr("u-id");
    $(".person").hide();
    modelChange(name, uid)
});

function modelChange(name, uid) {
    if ($(".model").length == 0) {
        talkstringpre = createTalkStringPre(uid, name);
        appendTalkcon($("body"), uid)
    } else {
        $(".model").find(".talkusername").html(name).attr("href", "/user/detail/miid/" + uid);
        $(".model").find(".modelcontainer").find("p").eq(0).find("a").html(langgobale[169].string + name + langgobale[170].string).attr("href", "/message/dialog/to_miid/" + uid);
        refresh();
        $(".model").show()
    }
}

$("body").delegate(".model .modelheader", "mousedown", function (event) {
    mouseMove($(this).parent(), 245, 0, 0, event)
});

function mouseMove($obj, left, pdl, pdt, e) {
    e.stopPropagation();
    var scollt = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
    var isMove = true;
    var abs_x = e.pageX - $obj.offset().left - left;
    var abs_y = e.pageY - $obj.offset().top + scollt;
    $(document).mousemove(function (event) {
        e.stopPropagation();
        if (isMove) {
            var obj = $obj;
            var l = event.pageX - abs_x;
            var t = event.pageY - abs_y;
            var w = $(window).width();
            var h = $(window).height();
            var obj_w = obj.width() + pdl - left;
            var obj_h = obj.height() + pdt;
            if (l > left && l < w - obj_w && t > 0 && t - scollt < h - obj_h) {
                obj.css({left: l, top: t, "margin-top": "0"})
            }
        }
    }).mouseup(function () {
        isMove = false
    })
}