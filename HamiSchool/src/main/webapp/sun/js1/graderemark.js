$(function () {
    var dataTime = function () {
        var d = new Date, vYear = d.getFullYear(), vMon = d.getMonth() + 1, vDay = d.getDate(), h = d.getHours(),
            m = d.getMinutes(), s = d.getSeconds(),
            time = vYear + langgobale[156].string + vMon + langgobale[157].string + vDay + langgobale[158].string + h + ":" + m + ":" + s;
        return time
    };
    var $ofiltrate = $(".filtrate"), $ouser = $(".contain_left .personLayer_msg .user_name"),
        fid = $ofiltrate.attr("f-id"), tid = $ofiltrate.attr("date-id"), cid = $ofiltrate.attr("t-id"),
        $o = $(".faster_reply").find(".headportrait"), img = $o.html(), userid = $ouser.attr("u-id"),
        username = $ouser.html(), uid = $o.attr("u-id"), name = $(".user_name").html(), link = $o.attr("href"),
        postrate = $o.attr("post-rate") == 1 ? "<span class='revocation'>" + langgobale[43].string + "</span>" : "",
        postcomment = $o.attr("post-comment") == 1 ? "<span class='delete'>" + langgobale[159].string + "</span>" : "";
    var vips = "";
    if ($o.attr("u-auth") == 1) {
        vips = '<i class="vip_icon vip_icon_s"></i>';
        if ($o.attr("u-vip") == 1) {
            var n = $o.attr("u-level") > 0 ? $o.attr("u-level") : "v";
            vips = '<i class="vip_icon vip_icon_s' + n + '"></i>'
        }
    }
    var notieFun = function (msg) {
        var s1 = "<div class='modal_full in'><div class='modal-backdrop'></div><div class='modal'><span class='close'></span><h3>" + langgobale[150].string + "</h3><div>",
            s2 = "</div></div></div>";
        $("body").append(s1 + msg + s2);
        $(".modal_full").fadeIn("normal", function () {
            setTimeout(function () {
                $(".modal_full").fadeOut("fast", function () {
                    $(this).remove()
                })
            }, 1e3)
        })
    };
    var check = function () {
        $("body").delegate(".bbsmodelfooter .txt", "click", function () {
            var $checkwrap_i = $(this).find("i");
            if ($checkwrap_i.hasClass("check_center")) {
                $checkwrap_i.removeClass("check_center")
            } else {
                $checkwrap_i.addClass("check_center")
            }
        })
    };
    var closeClick = function () {
        $("body").delegate(".bbsmodal .closebtn", "click", function () {
            $(".bbsmodal").remove();
            $("#ui-datepicker-div").hide()
        })
    };
    var submitPost = function (msg) {
        $(".bbsmodal .submit").undelegate("click");
        $(".bbsmodal").remove();
        notieFun(msg)
    };
    var addModel = function (titlename, con) {
        scoll = $(window).scrollTop();
        $(".bbsmodal").remove();
        var modal_s1 = "<div class='bbsmodal'><h4>" + titlename + "<span class='closebtn'></span></h4>",
            modal_s2 = "</div>";
        $("body").append(modal_s1 + con + modal_s2);
        $(".bbsmodal").show().css({top: "200px"})
    };
    var checkReason = function () {
        $("body").delegate(".reasonwrap span", "click", function () {
            var $oReasonwrap = $(".reasonwrap"), val = $(this).html();
            $oReasonwrap.siblings("textarea").val(val)
        })
    };
    var reasonHover = function (n) {
        $("body").delegate(".reasonwrap", "mouseenter", function () {
            $(".reasonwrap").css({height: n * 20 + "px"})
        });
        $("body").delegate(".reasonwrap", "mouseleave", function () {
            $(".reasonwrap").css({height: "57px"})
        })
    };
    var gradeselectMouseLeave = function () {
        $("body").delegate(".gradeselect ul", "mouseleave", function () {
            $(this).hide()
        })
    };
    var modelcon = function (classname, name) {
        var s = '<div class="' + classname + '">';
        s += '<div class="handlereason">' + "评分理由";
        s += '<div class="reasonwrap"></div>';
        s += '</div><textarea></textarea><div class="bbsmodelfooter"><span class="btn submit">' + langgobale[46].string + '</span><span class="txt"><span class="check_wrap noticauth"><i></i></span>' + langgobale[47].string + "</span></div>";
        addModel(name, s)
    };
    var modelComment = function () {
        var s = '<div class="comment">';
        s += "<textarea></textarea>";
        s += '<div class="bbsmodelfooter"><span class="btn submit">' + langgobale[49].string + "</span></div></div>";
        addModel(langgobale[48].string, s);
        $(".bbsmodal textarea").focus()
    };
    $("body").delegate(".comment .submit", "click", function () {
        var value = $(".bbsmodal").find("textarea").val();
        if (value) {
            $.ajax({
                url: "/comment/create",
                data: {thread_id: tid, value: value},
                type: "POST",
                dataType: "json",
                success: function (data) {
                    if (data.header.code == 1e5) {
                        var s = '<li  data-value="' + data.body.id + '"><a href="' + link + '">' + img + '</a><div><a href="' + link + '" class="name">' + name + "</a>" + vips + ": " + data.body.comment + '<span class="time">' + dataTime() + "</span>" + postcomment + "</div></li>";
                        if ($(".remark").length > 0) {
                            $(".remark").find("ul").prepend(s)
                        } else {
                            $(".faster_reply").after('<div class="remark"><h3>' + langgobale[48].string + '</h3><div class="remark_con"><ul>' + s + "</ul></div></div>")
                        }
                        submitPost(data.header.desc)
                    } else {
                        notieFun(data.header.desc)
                    }
                }
            })
        } else {
            notieFun(langgobale[50].string)
        }
    });
    var gradename = highGrade = lowGrade = "";
    var modelGrade = function (json) {
        var list = "";
        var data = json.rights;
        var reason = json.reason;
        for (var key in data) {
            highGrade = data[key].high;
            lowGrade = data[key].low;
            var s = "";
            for (var i = 0, len = (highGrade - lowGrade) / 10 + 1; i < len; i++) {
                var n = parseInt(highGrade) - i * 10;
                if (n < lowGrade) {
                    n = lowGrade
                }
                if (n != 0) {
                    s += "<li>" + n + "</li>"
                }
            }
            list += '<div class="changetheme clearfix"><span class="tb1">' + data[key].show + '<div class="gradeselect"><input type="text" value="1"/><span class="extendbtn"><i></i></span><ul>' + s + "<li>" + langgobale[44].string + '</li></ul></div></span><span class="tb2">' + lowGrade + " ～ " + highGrade + ' </span><span class="tb3">' + data[key].remain + "</span></div>";
            gradename = data[key].name
        }
        var s = '<div class="modelgrade"><div class="handlereason">' + "评分理由" + '</div><div class="reasonwrap">';
        for (var i = 0, len = reason.length; i < len; i++) {
            s += "<span>" + reason[i] + "</span>"
        }
        s += '</div><textarea></textarea><div class="bbsmodelfooter"><span class="btn submit">' + langgobale[46].string + "</span></div>";
        addModel(langgobale[51].string, s);
        $(".modelgrade").prepend('<div class="changetheme"><p><span class="tb1"></span><span class="tb2">' + langgobale[52].string + '</span><span class="tb3">' + langgobale[160].string + "</span></p></div>" + list);
        reasonHover(reason.length);
        checkReason()
    };
    $("body").delegate(".gradeselect li", "click", function () {
        var val = $(this).html();
        $(".gradeselect").find("ul").hide();
        if (val == langgobale[44].string) {
            $(this).parent().siblings("input").focus();
            val = ""
        }
        $(this).parent().siblings("input").val(val);
        grade = val
    });
    var charCodeAtFun = function (val) {
        var realLength = 0;
        for (var i = 0, len = val.length; i < len; i++) {
            var charCode = val.charCodeAt(i);
            if (charCode >= 0 && charCode <= 128) realLength += 1; else realLength += 2
        }
        return realLength
    };
    $("body").delegate(".modelgrade .submit", "click", function () {
        var $ograde = $(".modelgrade"), reason = $ograde.find("textarea").val(),
            $oInput = $ograde.find(".gradeselect input"), o = {}, value = $oInput.eq(0).val();
        o[gradename] = value;
        if (reason && reason != "\n") {
            if (value) {
                if (value == 0) {
                    notieFun("请输入正确的分值");
                    return false
                }
                if (charCodeAtFun(reason) > 60) {
                    notieFun("评分理由最多60个字节");
                    return false
                }
                if (Number(name) < Number($(".modelgrade .tb3").html())) {
                    notieFun(langgobale[53].string)
                } else {
                    var data = {};
                    data.thread_id = tid;
                    data.reason = reason;
                    data.grade = o;
                    $.ajax({
                        url: "/rate/create", data: data, type: "POST", dataType: "json", success: function (data) {
                            if (data.header.code == 12e4) {
                                var f = value > 0 ? "+" : "";
                                var s = "<tr data-value='" + data.body.id + "'><td class='first'><a u-id='" + uid + "'href='" + link + "'>" + img + "<span class='name'>" + name + "</span></a></td><td class='second'>" + f + value + "</td><td class='third'>" + reason + "</td></tr>";
                                if ($(".invitation_grade").length <= 0) {
                                    $(".btn_wrap").before("<div class='invitation_grade'><table><tbody><tr><th class='first'>" + langgobale[54].string + "<span>1</span>人评分</th><th class='second'>" + langgobale[55].string + "</th><th class='third'>" + langgobale[56].string + "</th></tr>" + s + "</tbody></table><p>" + langgobale[57].string + "： " + langgobale[55].string + "<span class='total_num'>" + 0 + "</span>" + postrate + "</p></div>")
                                } else {
                                    $(".invitation_grade").find("tbody").append(s);
                                    var $span = $(".invitation_grade").find("tr").eq(0).find("span");
                                    $span.html(parseInt($span.html()) + 1)
                                }
                                var $invitation_grade = $(".invitation_grade");
                                var total = Number($invitation_grade.find(".total_num").html()) + Number(value);
                                if (total > 0) {
                                    total = "+" + total
                                }
                                $invitation_grade.find(".total_num").html(total);
                                submitPost(data.header.desc)
                            } else {
                                notieFun(data.header.desc)
                            }
                        }
                    })
                }
            } else {
                notieFun(langgobale[58].string)
            }
        } else {
            notieFun("评分理由不能为空")
        }
    });
    var replygradeobj = "";
    $("body").delegate(".J_grade", "click", function () {
        $.ajax({
            url: "/rate/getrule",
            data: {tid: tid, pid: $(this).parents("li").attr("post-id")},
            type: "POST",
            dataType: "json",
            success: function (data) {
                if (data.header.code == 1e5) {
                    if (data.body.rights[0].rated) {
                        notieFun(langgobale[60].string)
                    } else {
                        modelreplyGrade(data.body)
                    }
                } else {
                    notieFun(data.header.desc)
                }
            }
        });
        replygradeobj = $(this)
    });
    var modelreplyGrade = function (json) {
        var list = "";
        var data = json.rights;
        var reason = json.reason;
        for (var key in data) {
            var s = "";
            highGrade = data[key].high;
            lowGrade = data[key].low;
            for (var i = 0, len = (highGrade - lowGrade) / 10 + 1; i < len; i++) {
                var n = parseInt(highGrade) - i * 10;
                if (n < lowGrade) {
                    n = lowGrade
                }
                if (n != 0) {
                    s += "<li>" + n + "</li>"
                }
            }
            list += '<div class="changetheme"><span class="tb1">' + data[key].show + '<div class="gradeselect"><input type="text" value="1"/><span class="extendbtn"><i></i></span><ul>' + s + "<li>" + langgobale[44].string + '</li></ul></div></span><span class="tb2">' + lowGrade + " ～ " + highGrade + ' </span><span class="tb3">' + data[key].remain + "</span></div>";
            gradename = data[key].name
        }
        var s = '<div class="modelreplygrade"><div class="handlereason">' + "评分理由" + '</div><div class="reasonwrap">';
        for (var i = 0, len = reason.length; i < len; i++) {
            s += "<span>" + reason[i] + "</span>"
        }
        s += '</div><textarea></textarea><div class="bbsmodelfooter"><span class="btn submit">' + langgobale[46].string + "</span></div>";
        addModel(langgobale[51].string, s);
        $(".modelreplygrade").prepend('<div class="changetheme"><p><span class="tb1"></span><span class="tb2">' + langgobale[52].string + '</span><span class="tb3">' + langgobale[160].string + "</span></p></div>" + list);
        reasonHover(reason.length);
        checkReason()
    };
    $("body").delegate(".gradeselect input", "keyup", function (e) {
        var value = $(this).val(), reg = new RegExp("^[0-9+-]*$");
        if (!reg.test(value)) {
            notieFun(langgobale[1].string);
            $(this).val("")
        } else {
            if (value == "") {
                $(this).val("")
            } else {
                if (Number(value) < lowGrade) {
                    $(this).val(lowGrade)
                } else if (Number(value) > highGrade) {
                    $(this).val("+" + highGrade)
                } else {
                    $(this).val(value)
                }
            }
        }
    });
    $("body").delegate(".modelreplygrade .submit", "click", function () {
        var $oreplygrade = $(".modelreplygrade"), reason = $oreplygrade.find("textarea").val(),
            $oInput = $oreplygrade.find(".gradeselect input"), o = {}, value = $oInput.eq(0).val();
        o[gradename] = value;
        if (reason && reason != "\n" && value != "") {
            if (charCodeAtFun(reason) > 60) {
                notieFun("评分理由最多60个字节");
                return false
            }
            $.ajax({
                url: "/rate/create",
                data: {post_id: replygradeobj.parents("li").attr("post-id"), thread_id: tid, reason: reason, grade: o},
                type: "POST",
                dataType: "json",
                success: function (data) {
                    if (data.header.code == 12e4) {
                        var f = value > 0 ? "+" : "";
                        var s = "<tr data-value='" + data.body.id + "'><td class='first'><a href='" + link + "' u-id='" + uid + "'>" + img + "<span class='name'>" + name + "</span>" + vips + "</a></td><td class='second'>" + f + value + "</td><td class='third'>" + reason + "</td></tr>";
                        var replygradeobjparent = replygradeobj.parent();
                        if (replygradeobjparent.siblings(".reply_grade").length == 0) {
                            replygradeobjparent.before("<div class='reply_grade'><table><tbody><tr><th class='first'>" + langgobale[54].string + "<span>1</span>人评分</th><th class='second'>" + langgobale[55].string + "</th><th class='third'>" + langgobale[56].string + "</th></tr>" + s + "</tbody></table><p>" + langgobale[57].string + "： " + langgobale[55].string + "<span class='total_num'>" + 0 + "</span>" + postrate + "</p></div>")
                        } else {
                            replygradeobjparent.siblings(".reply_grade").find("tbody").append(s);
                            var $span = replygradeobjparent.siblings(".reply_grade").find("tr").eq(0).find("span");
                            $span.html(parseInt($span.html()) + 1)
                        }
                        var $reply_grade = replygradeobjparent.siblings(".reply_grade");
                        var total = Number($reply_grade.find(".total_num").html()) + Number(value);
                        if (total > 0) {
                            total = "+" + total
                        }
                        $reply_grade.find(".total_num").html(total);
                        submitPost(data.header.desc)
                    } else {
                        notieFun(data.header.desc)
                    }
                }
            })
        } else {
            notieFun(langgobale[59].string)
        }
    });
    var oremarkbtn = "";
    $(".contain_right").delegate(".remark_btn", "click", function () {
        oremarkbtn = $(this);
        modelreplyComment()
    });
    var modelreplyComment = function () {
        var s = '<div class="replycomment">';
        s += "<textarea></textarea>";
        s += '<div class="bbsmodelfooter"><span class="btn submit">' + langgobale[49].string + "</span></div></div>";
        addModel(langgobale[48].string, s);
        $(".bbsmodal textarea").focus()
    };
    $("body").delegate(".replycomment .submit", "click", function () {
        var value = $(".bbsmodal").find("textarea").val();
        if (value) {
            $.ajax({
                url: "/comment/create",
                data: {thread_id: tid, post_id: oremarkbtn.parents("li").attr("post-id"), value: value},
                type: "POST",
                dataType: "json",
                success: function (data) {
                    if (data.header.code == 1e5) {
                        var string = '<li data-value="' + data.body.id + '"><a href="' + link + '" class="user_name">' + name + "</a>" + vips + ":" + data.body.comment + "<span>" + dataTime() + "</span>" + postcomment + "</li>";
                        $oUl = oremarkbtn.parents("li").find(".reply_talk");
                        if ($oUl.length == 0) {
                            var s = '<div class="reply_talk"><span class="frameem"></span><i class="triangle"></i><ul>' + string + "</ul></div>";
                            oremarkbtn.parents(".replay_bu").siblings(".reply_txt").after(s)
                        } else {
                            $oUl.children("ul").append(string)
                        }
                        submitPost(data.header.desc)
                    } else {
                        notieFun(data.header.desc)
                    }
                }
            })
        } else {
            notieFun(langgobale[50].string)
        }
    });
    check();
    closeClick();
    gradeselectMouseLeave();
    $(".appraise_btn").on("click", function () {
        modelComment()
    });
    $(".grade_btn").on("click", function () {
        $.ajax({
            url: "/rate/getrule", data: {tid: tid}, type: "POST", dataType: "json", success: function (data) {
                if (data.header.code == 1e5) {
                    if (data.body.rights[0].rated) {
                        notieFun(langgobale[60].string)
                    } else {
                        modelGrade(data.body)
                    }
                } else {
                    notieFun(data.header.desc)
                }
            }
        })
    });
    var reportPost = function (tid, pid) {
        var _content = '<ul class="report_reason">' + '<li><label><input type="radio" name="reportReason" value="1" />恶意灌水</label></li>' + '<li><label><input type="radio" name="reportReason" value="2" />广告诈骗</label></li>' + '<li><label><input type="radio" name="reportReason" value="3" />淫秽色情</label></li>' + '<li><label><input type="radio" name="reportReason" value="4" />其他原因</label></li>' + "</ul>" + '<div class="bbsmodelfooter"><span class="btn J_submit">提交</span></div></ul>';
        var reportAjaxFun = function (url, data, flag) {
            $.ajax({
                url: url, data: data, type: "POST", dataType: "json", success: function (json) {
                    if (json.header.code == 1e5) {
                        var type = json.body.data.report;
                        if (type === 2) {
                            notieFun("举报成功")
                        } else if (type === 1) {
                            if (flag === 0) {
                                notieFun("请勿重复举报")
                            } else {
                                notieFun("此帖已经举报过了")
                            }
                        }
                        $(".bbsmodal").remove()
                    } else if (json.header.code == 600003) {
                        location.href = json.header.url
                    } else {
                        notieFun(json.header.desc)
                    }
                }
            })
        };
        var _reportIt = function () {
            var _reason = $('[name="reportReason"]:checked').val();
            if (_reason === undefined) {
                notieFun("请选择您的举报原因");
                return
            }
            if (pid) {
                reportAjaxFun("/riskreport/post", {
                    post_id: pid,
                    thread_id: tid,
                    reason: _reason,
                    token: favorites_token
                }, 0)
            } else {
                reportAjaxFun("/riskreport/thread", {thread_id: tid, reason: _reason, token: favorites_token}, 1)
            }
        };
        addModel("举报原因", _content);
        $(".bbsmodal").addClass("report_model");
        $(".bbsmodal .J_submit").on("click.J_reportBtn", function () {
            _reportIt()
        })
    };
    $("body").delegate(".J_reportBtn,.J_report", "click", function () {
        var _tid = tid, _pid = $(this).parents("li").attr("post-id");
        reportPost(_tid, _pid)
    })
});