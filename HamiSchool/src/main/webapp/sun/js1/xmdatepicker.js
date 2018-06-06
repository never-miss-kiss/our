var dataTime = function () {
    var d = new Date, vYear = d.getFullYear(), vMon = d.getMonth() + 1, vDay = d.getDate(), h = d.getHours(),
        m = d.getMinutes(), s = d.getSeconds(),
        time = vYear + langgobale[156].string + vMon + langgobale[157].string + vDay + langgobale[158].string + h + ":" + m + ":" + s;
    return time
};
var h = dataTime().h;
var m = dataTime().m;
$.datepicker.regional[$("html").attr("lang")] = {
    prevText: "<上月",
    nextText: "下月>",
    monthNames: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
    monthNamesShort: ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"],
    dayNamesMin: ["日", "一", "二", "三", "四", "五", "六"],
    dayStatus: "设置 DD 为一周起始",
    dateStatus: "选择 m月 d日, DD",
    dateFormat: "yy-mm-dd",
    firstDay: 1,
    isRTL: false
};
if ($("html").attr("lang").toUpperCase() == "EN") {
    $.datepicker.setDefaults($.datepicker.regional["EN"])
} else {
    $.datepicker.setDefaults($.datepicker.regional[$("html").attr("lang")])
}
var datePicker = "";
var datapickerhide = function () {
    var val = datePicker.val();
    if (!val) {
        var d = new Date;
        var mon = d.getMonth() + 1;
        if (mon < 10) {
            mon = "0" + String(mon)
        }
        var day = d.getDate();
        if (day < 10) {
            day = "0" + String(day)
        }
        val = d.getFullYear() + "-" + mon + "-" + day
    }
    var h = $("#dayfooter input:eq(0)").val();
    if (!h) {
        h = "00"
    } else {
        if (h.length == 1) {
            h = "0" + String(h)
        }
    }
    var m = $("#dayfooter input:eq(1)").val();
    if (!m) {
        m = "00"
    } else {
        if (m.length == 1) {
            m = "0" + String(m)
        }
    }
    datePicker.val(val.split(" ")[0] + " " + h + ":" + m);
    $("#ui-datepicker-div").hide()
};
$("body").delegate(".datePicker", "click", function (e) {
    datePicker = $(this)
}).delegate("#ui-datepicker-div", "mouseleave", function (e) {
    datapickerhide()
}).delegate('input[xtype="day"]', "click", function (e) {
    $("#ui-datepicker-div").show()
}).delegate("#ui-datepicker-div .btn", "click", function (e) {
    datapickerhide()
});
$(".datePicker").datepicker();
$("body").delegate("#dayfooter input:eq(0)", "keyup", function (e) {
    var key = e.keyCode;
    if (key == 8 || key > 47 && key < 58) {
        var val = parseInt($(this).val());
        if (val > 23) {
            $(this).val("23");
            h = "23"
        }
        if (val < 0) {
            $(this).val("00");
            h = "00"
        }
    } else {
        $(this).val(h);
        return false
    }
});
$("body").delegate("#dayfooter input:eq(1)", "keyup", function (e) {
    var key = e.keyCode;
    if (key == 8 || key > 47 && key < 58) {
        var val = parseInt($(this).val());
        if (val > 59) {
            $(this).val("59");
            m = "59"
        }
        if (val < 0) {
            $(this).val("00");
            m = "00"
        }
    } else {
        $(this).val(m);
        return false
    }
});