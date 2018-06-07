var SignUtil = function () {
    this.init()
};
SignUtil.prototype = {
    init: function () {
        this.pack = document.getElementById(packIdName);
        if (!this.pack) {
            return
        }
        this.loadPro();
        this.luojiA()
    }, contructor: SignUtil, loadPro: function () {
        if (pageFlag == "1") {
            this.cssHref("//s1.bbs.xiaomi.cn/statics/css/zh-cn/sign_www.css")
        }
        if (pageFlag == "2") {
            this.cssHref("//s1.bbs.xiaomi.cn/statics/css/zh-cn/sign.css")
        }
        this.initDom()
    }, creatJs: function (src) {
        var Scrip = document.createElement("script");
        Scrip.type = "text/javascript";
        Scrip.src = "http://bbs.xiaomi.cn" + src;
        document.getElementById("mibbs_sign").appendChild(Scrip)
    }, LoadCallback: function (data) {
        var _this = this;
        var code = data.code;
        if (code == "200") {
            var status = data.data.status;
            if (status == 0 || status == 2) {
                var num = data.data.total;
                var str = _this.tmpl("", "签到", "0", num, "<span style='font-size:12px;'>签到看排名</span>", "", "");
                _this.pack.innerHTML = str;
                _this.luojiA();
                return false
            } else if (status == 1) {
                var d = data.data;
                var total = d.total, days = d.days, sort = d.sort;
                var str = _this.tmpl("visted", "已签到", days, total, sort, "", "");
                _this.pack.innerHTML = str;
                _this.luojiA()
            }
        }
    }, initDom: function () {
        var _this = this;
        var url = "/user/getsign?jsoncallback=signutil.LoadCallback";
        _this.creatJs(url)
    }, luojiA: function () {
        var _this = this;
        var o = document.getElementById("JD_win");
        document.getElementById("mibbs_sign").onmouseenter = function () {
            o.style.display = "block"
        };
        document.getElementById("mibbs_sign").onmouseleave = function () {
            o.style.display = "none"
        }
    }, cssHref: function (url) {
        var link = document.createElement("link");
        link.rel = "stylesheet";
        link.href = url;
        document.getElementsByTagName("head")[0].appendChild(link)
    }, tmpl: function (visted, str0, day, num, line, str1, str2) {
        var string = '<div class="mibbs_con" style="margin-bottom:10px;"><span class="mibbs_signpanel JD_sign ' + visted + '" id="JD_sign" ><div class="font">' + str0 + '</div><span class="nums">连续' + day + '天</span><div class="fblock"><div class="all">' + num + '人</div><div class="line">' + line + '</div></div></span><div id="JD_win" class="mibbs_win JD_win" ><img src="//cdn.fds.api.xiaomi.com/b2c-bbs-cms/2017/1128/20171128094227219.png"><div><h5>扫码下载App</h5><span>一键签到 升级加速</span></div><div class="angleA"></div><div class="angleB"></div></div></div>\n			</div></div></div>';
        return string
    }
};
var signutil = new SignUtil;