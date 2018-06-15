<%--
  Created by IntelliJ IDEA.
  User: 勿忘初心
  Date: 2018/6/10
  Time: 17:11
  To change this template use File | Settings | File Templates.


  大学搜索功能
  评论功能
  ajax左侧栏目分类
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="<%= basePath %>tian/showHelp/showHelp_files/helpShow.css" rel="stylesheet">
    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
<!--Gallery栏目框-->
    <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">



    <title>HelpBuyDetail</title>

    <script>

        (function(){
            var webp = (function(){
                try{
                    return (document.createElement('canvas').toDataURL('image/webp').indexOf('data:image/webp') === 0);
                }catch(err) {
                    return false;
                }
            })()
            var DR = window.devicePixelRatio||1

            function formatImg(url,w,h) {
                url = trimHttp(url)
                w = parseInt(w)
                h = parseInt(h)
                if(!url) return
                var suffix = url.match(/(.*\.(jpg|jpeg|gif|png))(\?.*)?/)
                if(!suffix) return
                //路径是否包含/bfs/
                var isBfs = url.indexOf('/bfs/') != -1 ? true : false
                //是否是GIF图片
                if(suffix[2] === 'gif' || !isBfs){
                    return url
                }
                //裁剪规则
                var cut = (w && h) ? '@' + w + 'w_' + h + 'h' : '@'
                //图片后参数 比如视频动态图
                var args = suffix[3] ? suffix[3] : ''
                if(webp){
                    return suffix[1] + cut + '.webp' + args
                }else{
                    return suffix[1] + cut + '.' + suffix[2] + args
                }
            }

            function trimHttp(url){
                return url ? url.replace(/^http:|^https:/, '') : ''
            }
            function detailImg(e,w,h){
                var w = w||null
                var h = h||null
                if(e.getAttribute('webpCheck')){
                    return
                }
                // let w = e.width;
                // let h = e.height;
                var imgStr = e.getAttribute('data-bg-img');
                if(!imgStr){
                    return
                }
                var webpStr = formatImg(imgStr,w*DR,h*DR)
                e.setAttribute('webpCheck','checked')
                e.setAttribute('src',webpStr)

                e.onerror=null
            }
            //try

            window.detailImg = detailImg



            window.articleIdList = []


            window.original = {
                rid:"0",
                categories: JSON.parse('[{"id":2,"parent_id":0,"name":"动画","children":[{"id":4,"parent_id":2,"name":"动漫杂谈"},{"id":5,"parent_id":2,"name":"动漫资讯"},{"id":31,"parent_id":2,"name":"动画技术"}]},{"id":1,"parent_id":0,"name":"游戏","children":[{"id":6,"parent_id":1,"name":"单机游戏"},{"id":7,"parent_id":1,"name":"电子竞技"},{"id":8,"parent_id":1,"name":"手机游戏"},{"id":9,"parent_id":1,"name":"网络游戏"},{"id":10,"parent_id":1,"name":"桌游棋牌"}]},{"id":28,"parent_id":0,"name":"影视","children":[{"id":12,"parent_id":28,"name":"电影"},{"id":35,"parent_id":28,"name":"电视剧"},{"id":36,"parent_id":28,"name":"纪录片"},{"id":37,"parent_id":28,"name":"综艺"}]},{"id":3,"parent_id":0,"name":"生活","children":[{"id":13,"parent_id":3,"name":"美食"},{"id":21,"parent_id":3,"name":"萌宠"},{"id":14,"parent_id":3,"name":"时尚"},{"id":22,"parent_id":3,"name":"运动"},{"id":15,"parent_id":3,"name":"日常"}]},{"id":29,"parent_id":0,"name":"兴趣","children":[{"id":23,"parent_id":29,"name":"绘画"},{"id":24,"parent_id":29,"name":"手工"},{"id":38,"parent_id":29,"name":"摄影"},{"id":39,"parent_id":29,"name":"音乐舞蹈"},{"id":11,"parent_id":29,"name":"模型手办"}]},{"id":16,"parent_id":0,"name":"轻小说","children":[{"id":18,"parent_id":16,"name":"原创连载"},{"id":19,"parent_id":16,"name":"同人连载"},{"id":32,"parent_id":16,"name":"短篇小说"},{"id":20,"parent_id":16,"name":"小说杂谈"}]},{"id":17,"parent_id":0,"name":"科技","children":[{"id":25,"parent_id":17,"name":"人文历史"},{"id":33,"parent_id":17,"name":"自然"},{"id":26,"parent_id":17,"name":"数码"},{"id":27,"parent_id":17,"name":"汽车"},{"id":34,"parent_id":17,"name":"学习"}]}]')
            }
        })()

    </script>
    <link href="<%= basePath %>tian/showHelp/showHelp_files/list.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.css" rel="stylesheet">
    <style type="text/css">
        .bili-header-m {
            font: 12px Helvetica Neue, Helvetica, Arial, Microsoft Yahei, Hiragino Sans GB, Heiti SC, WenQuanYi Micro Hei, sans-serif;
            position: relative;
            z-index: 10000;
            background: #fff
        }
        .bili-header-m, .bili-header-m article, .bili-header-m aside, .bili-header-m blockquote, .bili-header-m button, .bili-header-m code, .bili-header-m dd, .bili-header-m details, .bili-header-m dl, .bili-header-m dt, .bili-header-m fieldset, .bili-header-m figcaption, .bili-header-m figure, .bili-header-m footer, .bili-header-m form, .bili-header-m h1, .bili-header-m h2, .bili-header-m h3, .bili-header-m h4, .bili-header-m h5, .bili-header-m h6, .bili-header-m header, .bili-header-m hgroup, .bili-header-m hr, .bili-header-m input, .bili-header-m legend, .bili-header-m li, .bili-header-m menu, .bili-header-m nav, .bili-header-m ol, .bili-header-m p, .bili-header-m pre, .bili-header-m section, .bili-header-m td, .bili-header-m textarea, .bili-header-m th, .bili-header-m ul {
            margin: 0;
            padding: 0
        }
        .bili-header-m input, .bili-header-m select, .bili-header-m textarea {
            font-size: 100%
        }
        .bili-header-m table {
            border-collapse: collapse;
            border-spacing: 0
        }
        .bili-header-m th {
            text-align: inherit
        }
        .bili-header-m fieldset, .bili-header-m img {
            border: none;
            vertical-align: middle
        }
        .bili-header-m abbr, .bili-header-m acronym {
            border: none;
            font-variant: normal
        }
        .bili-header-m del {
            text-decoration: line-through
        }
        .bili-header-m address, .bili-header-m caption, .bili-header-m cite, .bili-header-m code, .bili-header-m dfn, .bili-header-m em, .bili-header-m th, .bili-header-m var {
            font-style: normal;
            font-weight: 400
        }
        .bili-header-m ol, .bili-header-m ul {
            list-style: none
        }
        .bili-header-m caption, .bili-header-m th {
            text-align: left
        }
        .bili-header-m h1, .bili-header-m h2, .bili-header-m h3, .bili-header-m h4, .bili-header-m h5, .bili-header-m h6 {
            font-size: 100%;
            font-weight: 400
        }
        .bili-header-m q:after, .bili-header-m q:before {
            content: ""
        }
        .bili-header-m sub, .bili-header-m sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline
        }
        .bili-header-m sup {
            top: -.5em
        }
        .bili-header-m sub {
            bottom: -.25em
        }
        .bili-header-m a {
            transition: color .2s
        }
        .bili-header-m a, .bili-header-m a:hover, .bili-header-m ins {
            text-decoration: none
        }
        .bili-header-m :focus, .bili-header-m a:focus {
            outline: none
        }
        .bili-header-m .clearfix:after, .bili-header-m .clearfix:before {
            content: "";
            display: table
        }
        .bili-header-m .clearfix:after {
            clear: both;
            overflow: hidden
        }
        .bili-header-m .clearfix {
            zoom: 1
        }
        .bili-header-m .clear {
            clear: both;
            display: block;
            font-size: 0;
            height: 0;
            line-height: 0;
            overflow: hidden
        }
        .bili-header-m .hide {
            display: none
        }
        .bili-header-m .block {
            display: block
        }
        .bili-header-m .fl, .bili-header-m .fr {
            display: inline
        }
        .bili-header-m .fl {
            float: left
        }
        .bili-header-m .fr {
            float: right
        }
        .bili-header-m .bili-icon {
            display: inline-block;
            background-image: url(//static.hdslb.com/images/base/icons.png)
        }
        .bili-header-m .bili-wrapper {
            margin: 0 auto;
            width: 1160px
        }
        @media screen and (max-width:1400px) {
            .bili-header-m .bili-wrapper {
                width: 980px
            }
        }
        .bili-header-m .bili-wrapper .l-con {
            float: left;
            width: 900px
        }
        @media screen and (max-width:1400px) {
            .bili-header-m .bili-wrapper .l-con {
                width: 720px
            }
        }
        .bili-header-m .bili-wrapper .r-con {
            width: 260px;
            float: right
        }
        .bili-header-m .bi-btn {
            display: inline-block;
            background: #00a1d6;
            color: #fff;
            font-size: 14px;
            padding: 4px 18px;
            border-radius: 4px;
            transition: all .3s;
            user-select: none;
            border: 1px solid #00a1d6;
            text-align: center;
            cursor: pointer
        }
        .bili-header-m .bi-btn:hover {
            color: #fff;
            background: #00b5e5;
            border-color: #00b5e5
        }
        .bili-header-m .bi-btn:active {
            background: #01769c;
            border-color: #01769c
        }
        .bili-header-m .nav-menu {
            position: relative;
            z-index: 200;
            height: 42px;
            color: #222
        }
        .bili-header-m .nav-menu .blur-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-position: center -10px;
            background-repeat: no-repeat;
            filter: blur(4px)
        }
        .bili-header-m .nav-menu .nav-mask {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: hsla(0,0%,100%,.4);
            box-shadow: 0 1px 2px rgba(0,0,0,.1)
        }
        .bili-header-m .nav-menu .nav-con .nav-item {
            float: left;
            text-align: center;
            line-height: 42px;
            height: 42px;
            position: relative;
            background-color: hsla(0,0%,100%,0);
            transition: all .3s
        }
        .bili-header-m .nav-menu .nav-con .nav-item .t {
            color: #222;
            height: 100%;
            display: block;
            padding: 0 10px
        }
        .bili-header-m .nav-menu .nav-con .nav-item .t .num {
            height: 12px;
            line-height: 12px;
            color: #fff;
            background-color: #f25d8e;
            border-radius: 10px;
            position: absolute;
            padding: 1px 2px;
            font-size: 12px;
            top: 1px;
            right: -4px;
            min-width: 16px;
            z-index: 30;
            text-align: center
        }
        .bili-header-m .nav-menu .nav-con .nav-item .t .dot {
            width: 6px;
            height: 6px;
            background-color: #f25d8e;
            border-radius: 50%;
            position: absolute;
            right: 5px;
            top: 8px
        }
        .bili-header-m .nav-menu .nav-con .nav-item .new {
            position: absolute;
            top: 6px;
            right: -6px;
            width: 22px;
            height: 9px;
            background-position: -851px -412px
        }
        .bili-header-m .nav-menu .nav-con .nav-item .red_point {
            height: 8px;
            width: 8px;
            border-radius: 100%;
            position: absolute;
            right: 6px;
            top: 7px;
            background-color: #f25d8e
        }
        .bili-header-m .nav-menu .nav-con .nav-item:hover {
            background-color: hsla(0,0%,100%,.3)
        }
        .bili-header-m .nav-menu .nav-con .nav-item.profile-info:hover {
            background: none
        }
        .bili-header-m .nav-menu .nav-con .nav-item.home {
            margin-left: -10px;
            padding-left: 12px
        }
        .bili-header-m .nav-menu .nav-con .nav-item.home a {
            padding-left: 20px
        }
        .bili-header-m .nav-menu .nav-con .nav-item.home i {
            position: absolute;
            width: 17px;
            height: 14px;
            left: 10px;
            top: 12px;
            background-position: -919px -88px
        }
        .bili-header-m .nav-menu .nav-con .nav-item.mobile {
            padding: 0 10px
        }
        .bili-header-m .nav-menu .nav-con .nav-item.mobile a {
            display: inline-block;
            padding: 0
        }
        .bili-header-m .nav-menu .nav-con .nav-item .i-frame {
            position: absolute;
            left: 0;
            top: 42px
        }
        .bili-header-m .nav-menu .nav-con .nav-item .app-orcode-box {
            position: absolute;
            background: red;
            left: -20px;
            top: 42px;
            width: 259px;
            height: 174px;
            background: url(//s1.hdslb.com/bfs/seed/jinkela/header/images/orcode-frame.png)
        }
        .bili-header-m .nav-menu .nav-con .nav-item .app-orcode-box:before {
            content: "";
            position: absolute;
            width: 97px;
            height: 97px;
            left: 82px;
            top: 30px;
            background: url(//s1.hdslb.com/bfs/seed/jinkela/header/images/app-orcode.png)
        }
        .bili-header-m .nav-menu.blur-black .nav-mask {
            background-color: rgba(0,0,0,.4)
        }
        .bili-header-m .nav-menu.blur-black .nav-con .nav-item .t {
            color: #fff
        }
        .bili-header-m .nav-menu.blur-black .nav-con .nav-item.home i {
            background-position: -855px -88px
        }
        .bili-header-m .nav-menu .up-load {
            position: relative;
            width: 58px;
            height: 42px
        }
        .bili-header-m .nav-menu .up-load .u-link {
            display: block;
            width: 100%;
            height: 48px;
            line-height: 42px;
            text-align: center;
            font-size: 14px;
            color: #fff;
            background-image: url(//s1.hdslb.com/bfs/seed/jinkela/header/images/up-load-btn.png)
        }
        .bili-header-m .nav-menu .up-load .upload-new-icon {
            position: absolute;
            width: 54px;
            height: 34px;
            top: 4px;
            right: -53px;
            background: url(//s1.hdslb.com/bfs/seed/jinkela/header/images/up-new-iocn.png) no-repeat;
            z-index: 20
        }
        .bili-header-m .nav-menu .up-load:hover .u-link {
            opacity: .9
        }
        .bili-header-m .nav-menu .up-load .up-nav {
            width: 360px;
            position: absolute;
            right: 0;
            top: 42px;
            background: #fff;
            border-radius: 0 0 4px 4px;
            box-shadow: 0 2px 4px rgba(0,0,0,.16);
            overflow: hidden;
            z-index: 1
        }
        .bili-header-m .nav-menu .up-load .up-nav li {
            cursor: pointer;
            text-align: center;
            width: 72px;
            height: 64px;
            transition: .2s;
            float: left;
            position: relative;
            background: #fff
        }
        .bili-header-m .nav-menu .up-load .up-nav li a {
            color: #f25d8e;
            display: block;
            width: 100%;
            height: 100%
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect {
            display: block;
            width: 20px;
            height: 20px;
            margin: 15px auto 2px;
            transition: .2s
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect.i-art {
            background-position: -534px -919px
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect.i-ap {
            background-position: -534px -983px
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vp {
            background-position: -471px -919px
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vm {
            background-position: -471px -982px
        }
        .bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vc {
            background-position: -471px -1751px
        }
        .bili-header-m .nav-menu .up-load .up-nav li:hover {
            background: #e5e9ef
        }
        .bili-header-m .nav-menu .up-load .up-nav li:hover .rect {
            transform: translateY(-2px)
        }
        .bili-header-m .nav-menu .up-load .up-nav li .new {
            position: absolute;
            top: 6px;
            right: 0;
            width: 22px;
            height: 9px;
            background-position: -851px -412px
        }
        .bili-header-m .nav-menu .up-load .up-nav li .beta {
            position: absolute;
            top: 6px;
            right: 0;
            width: 22px;
            height: 9px;
            background-position: -854px -1307px
        }
        .bili-header-m .nav-menu .dd-bubble {
            position: absolute;
            z-index: 1
        }
        .bili-header-m .profile-info {
            width: 58px
        }
        .bili-header-m .profile-info .i-face {
            position: absolute;
            z-index: 20;
            width: 36px;
            height: 36px;
            left: 11px;
            top: 0;
            transition: .3s
        }
        .bili-header-m .profile-info .i-face .face {
            border: 0 solid #fff;
            width: 100%;
            height: 100%;
            border-radius: 50%
        }
        .bili-header-m .profile-info .i-face .legalize {
            background-image: url(//s1.hdslb.com/bfs/seed/jinkela/header/images/user-auth.png);
            width: 20px;
            height: 20px;
            position: absolute;
            bottom: 10px;
            right: 7px;
            visibility: hidden;
            transition-delay: 0s
        }
        .bili-header-m .profile-info .i-face .legalize.vip {
            background-position: -72px -52px
        }
        .bili-header-m .profile-info .i-face .legalize.p-ver {
            background-position: -38px -52px
        }
        .bili-header-m .profile-info .i-face .legalize.e-ver {
            background-position: -4px -52px
        }
        .bili-header-m .profile-info .i-face .pendant {
            position: absolute;
            width: 84px;
            height: 84px;
            left: -11px;
            bottom: -3px;
            visibility: hidden;
            transition-delay: 0s
        }
        .bili-header-m .profile-info.on .i-face {
            left: -4px;
            top: 15px;
            height: 64px;
            width: 64px
        }
        .bili-header-m .profile-info.on .i-face .face {
            border: 2px solid #fff
        }
        .bili-header-m .profile-info.on .i-face .legalize {
            bottom: -4px;
            right: -3px;
            transition-delay: .28s;
            visibility: visible
        }
        .bili-header-m .profile-info.on .scale-in .face {
            width: 48px;
            height: 48px
        }
        .bili-header-m .profile-info.on .scale-in .legalize {
            bottom: 10px;
            right: 7px;
            transition-delay: .28s;
            visibility: visible
        }
        .bili-header-m .profile-info.on .scale-in .pendant {
            transition-delay: .28s;
            visibility: visible
        }
        .bili-header-m .head-banner {
            position: relative;
            z-index: 199;
            height: 170px;
            margin-top: -42px;
            background: #eee;
            background-position: center -10px;
            background-repeat: no-repeat
        }
        .bili-header-m .head-banner .banner-link {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 100%
        }
        .bili-header-m .head-banner .head-content {
            position: relative;
            height: 170px
        }
        .bili-header-m .head-banner .head-content .head-title {
            position: absolute;
            top: 114px;
            left: 255px;
            line-height: 20px;
            padding: 6px 10px;
            background-color: rgba(0,0,0,.68);
            color: #fff;
            border-radius: 4px;
            font-size: 14px;
            max-width: 350px;
            opacity: 0;
            transition: all .2s
        }
        .bili-header-m .head-banner .head-content .head-logo {
            position: absolute;
            width: 220px;
            height: 105px;
            left: 24px;
            top: 55px;
            background: transparent no-repeat 0;
            z-index: 10
        }
        .bili-header-m .head-banner:hover .head-content .head-title {
            opacity: 1
        }
        .bili-header-m .b-icon {
            display: inline-block;
            vertical-align: middle;
            width: 12px;
            height: 12px;
            background: url(//static.hdslb.com/images/base/icons.png) no-repeat
        }
        .bili-header-m .b-icon.b-icon-p-account, .bili-header-m .b-icon.b-icon-p-live, .bili-header-m .b-icon.b-icon-p-member, .bili-header-m .b-icon.b-icon-p-wallet {
            width: 16px;
            height: 16px
        }
        .bili-header-m .b-icon.b-icon-p-member {
            background-position: -472px -344px
        }
        .bili-header-m .b-icon.b-icon-p-account {
            background-position: -472px -407px
        }
        .bili-header-m .b-icon.b-icon-p-wallet {
            background-position: -472px -472px
        }
        .bili-header-m .b-icon.b-icon-p-live {
            background-position: -473px -855px
        }
        .bili-header-m .b-icon.b-icon-vp {
            background-position: -471px -919px
        }
        .bili-header-m .b-icon.b-icon-vm {
            background-position: -471px -982px
        }
        .bili-header-m .b-icon.b-icon-vc {
            background-position: -471px -1751px
        }
        .bili-header-m .b-icon.b-icon-arrow-r {
            background-position: -478px -218px;
            width: 6px;
            height: 12px;
            margin: -2px 0 0 5px
        }
        .bili-header-m .b-icon.b-icon-ap {
            background-position: -534px -983px
        }
        .bili-header-m .b-icon.b-icon-art {
            background-position: -534px -919px
        }
        .bili-header-m .b-icon.b-icon-app {
            background-position: -1371px -1175px;
            width: 16px;
            height: 21px
        }
        .bili-header-m .mini-wnd-nav {
            position: absolute;
            left: 0;
            top: 42px;
            background-color: #fff;
            width: 320px;
            box-shadow: 0 2px 4px rgba(0,0,0,.16);
            border: 1px solid #e5e9ef;
            border-radius: 0 0 4px 4px;
            z-index: 200
        }
        .bili-header-m .mini-wnd-nav a {
            color: #222;
            transition: color .2s
        }
        .bili-header-m .mini-wnd-nav .list {
            padding-top: 10px
        }
        .bili-header-m .mini-wnd-nav .list.history li {
            clear: both;
            position: relative;
            padding-left: 38px
        }
        .bili-header-m .mini-wnd-nav .list.history li:before {
            left: 26px
        }
        .bili-header-m .mini-wnd-nav .list.history li.timeline {
            color: #99a2aa;
            overflow: visible;
            height: 0;
            padding: 0;
            margin: 10px 0;
            border-top: 1px solid #e5e9ef;
            position: relative
        }
        .bili-header-m .mini-wnd-nav .list.history li.timeline:before {
            display: none
        }
        .bili-header-m .mini-wnd-nav .list.history li.timeline .date {
            background-color: #fff;
            position: absolute;
            top: -6px;
            left: 0;
            z-index: 10;
            padding: 0 10px;
            height: 12px;
            line-height: 12px
        }
        .bili-header-m .mini-wnd-nav .list.history li.no-data {
            border: none;
            padding: 0
        }
        .bili-header-m .mini-wnd-nav .list.history li a {
            max-width: none;
            float: inherit
        }
        .bili-header-m .mini-wnd-nav .list li {
            height: 28px;
            line-height: 28px;
            text-align: left;
            font-size: 12px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            padding: 0 12px 0 22px;
            position: relative
        }
        .bili-header-m .mini-wnd-nav .list li:before {
            content: "";
            display: block;
            position: absolute;
            top: 13px;
            left: 10px;
            width: 4px;
            height: 4px;
            border-radius: 2px;
            background-color: #6d757a
        }
        .bili-header-m .mini-wnd-nav .list li:hover {
            background-color: #e5e9ef
        }
        .bili-header-m .mini-wnd-nav .list li.no-data {
            text-align: center;
            color: #aaa
        }
        .bili-header-m .mini-wnd-nav .list li a {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: block
        }
        .bili-header-m .mini-wnd-nav .list li a:hover {
            color: #00a1d6
        }
        .bili-header-m .mini-wnd-nav .list li .link {
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            display: inline-block
        }
        .bili-header-m .mini-wnd-nav .read-more {
            display: block;
            margin: 4px 12px 12px;
            background-color: #e5e9ef;
            text-align: center;
            border: 1px solid #e0e6ed;
            height: 22px;
            line-height: 22px;
            color: #222;
            border-radius: 4px
        }
        .bili-header-m .mini-wnd-nav .read-more:hover {
            background-color: #ccd0d7
        }
        .bili-header-m .mini-wnd-nav .m-w-loading {
            height: 100px;
            line-height: 100px;
            text-align: center
        }
        .slide-fade-enter-active, .slide-fade-leave-active {
            transition: all .3s
        }
        .slide-fade-enter, .slide-fade-leave-to {
            transform: translateY(5px);
            opacity: 0
        }
    </style>
    <style type="text/css">
        .bili-header-m{font:12px Helvetica Neue,Helvetica,Arial,Microsoft Yahei,Hiragino Sans GB,Heiti SC,WenQuanYi Micro Hei,sans-serif;position:relative;z-index:10000;background:#fff}.bili-header-m,.bili-header-m article,.bili-header-m aside,.bili-header-m blockquote,.bili-header-m button,.bili-header-m code,.bili-header-m dd,.bili-header-m details,.bili-header-m dl,.bili-header-m dt,.bili-header-m fieldset,.bili-header-m figcaption,.bili-header-m figure,.bili-header-m footer,.bili-header-m form,.bili-header-m h1,.bili-header-m h2,.bili-header-m h3,.bili-header-m h4,.bili-header-m h5,.bili-header-m h6,.bili-header-m header,.bili-header-m hgroup,.bili-header-m hr,.bili-header-m input,.bili-header-m legend,.bili-header-m li,.bili-header-m menu,.bili-header-m nav,.bili-header-m ol,.bili-header-m p,.bili-header-m pre,.bili-header-m section,.bili-header-m td,.bili-header-m textarea,.bili-header-m th,.bili-header-m ul{margin:0;padding:0}.bili-header-m input,.bili-header-m select,.bili-header-m textarea{font-size:100%}.bili-header-m table{border-collapse:collapse;border-spacing:0}.bili-header-m th{text-align:inherit}.bili-header-m fieldset,.bili-header-m img{border:none;vertical-align:middle}.bili-header-m abbr,.bili-header-m acronym{border:none;font-variant:normal}.bili-header-m del{text-decoration:line-through}.bili-header-m address,.bili-header-m caption,.bili-header-m cite,.bili-header-m code,.bili-header-m dfn,.bili-header-m em,.bili-header-m th,.bili-header-m var{font-style:normal;font-weight:400}.bili-header-m ol,.bili-header-m ul{list-style:none}.bili-header-m caption,.bili-header-m th{text-align:left}.bili-header-m h1,.bili-header-m h2,.bili-header-m h3,.bili-header-m h4,.bili-header-m h5,.bili-header-m h6{font-size:100%;font-weight:400}.bili-header-m q:after,.bili-header-m q:before{content:""}.bili-header-m sub,.bili-header-m sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}.bili-header-m sup{top:-.5em}.bili-header-m sub{bottom:-.25em}.bili-header-m a{transition:color .2s}.bili-header-m a,.bili-header-m a:hover,.bili-header-m ins{text-decoration:none}.bili-header-m :focus,.bili-header-m a:focus{outline:none}.bili-header-m .clearfix:after,.bili-header-m .clearfix:before{content:"";display:table}.bili-header-m .clearfix:after{clear:both;overflow:hidden}.bili-header-m .clearfix{zoom:1}.bili-header-m .clear{clear:both;display:block;font-size:0;height:0;line-height:0;overflow:hidden}.bili-header-m .hide{display:none}.bili-header-m .block{display:block}.bili-header-m .fl,.bili-header-m .fr{display:inline}.bili-header-m .fl{float:left}.bili-header-m .fr{float:right}.bili-header-m .bili-icon{display:inline-block;background-image:url(//static.hdslb.com/images/base/icons.png)}.bili-header-m .bili-wrapper{margin:0 auto;width:1160px}@media screen and (max-width:1400px){.bili-header-m .bili-wrapper{width:980px}}.bili-header-m .bili-wrapper .l-con{float:left;width:900px}@media screen and (max-width:1400px){.bili-header-m .bili-wrapper .l-con{width:720px}}.bili-header-m .bili-wrapper .r-con{width:260px;float:right}.bili-header-m .bi-btn{display:inline-block;background:#00a1d6;color:#fff;font-size:14px;padding:4px 18px;border-radius:4px;transition:all .3s;user-select:none;border:1px solid #00a1d6;text-align:center;cursor:pointer}.bili-header-m .bi-btn:hover{color:#fff;background:#00b5e5;border-color:#00b5e5}.bili-header-m .bi-btn:active{background:#01769c;border-color:#01769c}.bili-header-m .nav-menu{position:relative;z-index:200;height:42px;color:#222}.bili-header-m .nav-menu .blur-bg{position:absolute;top:0;left:0;width:100%;height:100%;background-position:center -10px;background-repeat:no-repeat;filter:blur(4px)}.bili-header-m .nav-menu .nav-mask{position:absolute;top:0;left:0;width:100%;height:100%;background-color:hsla(0,0%,100%,.4);box-shadow:0 1px 2px rgba(0,0,0,.1)}.bili-header-m .nav-menu .nav-con .nav-item{float:left;text-align:center;line-height:42px;height:42px;position:relative;background-color:hsla(0,0%,100%,0);transition:all .3s}.bili-header-m .nav-menu .nav-con .nav-item .t{color:#222;height:100%;display:block;padding:0 10px}.bili-header-m .nav-menu .nav-con .nav-item .t .num{height:12px;line-height:12px;color:#fff;background-color:#f25d8e;border-radius:10px;position:absolute;padding:1px 2px;font-size:12px;top:1px;right:-4px;min-width:16px;z-index:30;text-align:center}.bili-header-m .nav-menu .nav-con .nav-item .t .dot{width:6px;height:6px;background-color:#f25d8e;border-radius:50%;position:absolute;right:5px;top:8px}.bili-header-m .nav-menu .nav-con .nav-item .new{position:absolute;top:6px;right:-6px;width:22px;height:9px;background-position:-851px -412px}.bili-header-m .nav-menu .nav-con .nav-item .red_point{height:8px;width:8px;border-radius:100%;position:absolute;right:6px;top:7px;background-color:#f25d8e}.bili-header-m .nav-menu .nav-con .nav-item:hover{background-color:hsla(0,0%,100%,.3)}.bili-header-m .nav-menu .nav-con .nav-item.profile-info:hover{background:none}.bili-header-m .nav-menu .nav-con .nav-item.home{margin-left:-10px;padding-left:12px}.bili-header-m .nav-menu .nav-con .nav-item.home a{padding-left:20px}.bili-header-m .nav-menu .nav-con .nav-item.home i{position:absolute;width:17px;height:14px;left:10px;top:12px;background-position:-919px -88px}.bili-header-m .nav-menu .nav-con .nav-item.mobile{padding:0 10px}.bili-header-m .nav-menu .nav-con .nav-item.mobile a{display:inline-block;padding:0}.bili-header-m .nav-menu .nav-con .nav-item .i-frame{position:absolute;left:0;top:42px}.bili-header-m .nav-menu .nav-con .nav-item .app-orcode-box{position:absolute;background:red;left:-20px;top:42px;width:259px;height:174px;background:url(//s1.hdslb.com/bfs/seed/jinkela/header/images/orcode-frame.png)}.bili-header-m .nav-menu .nav-con .nav-item .app-orcode-box:before{content:"";position:absolute;width:97px;height:97px;left:82px;top:30px;background:url(//s1.hdslb.com/bfs/seed/jinkela/header/images/app-orcode.png)}.bili-header-m .nav-menu.blur-black .nav-mask{background-color:rgba(0,0,0,.4)}.bili-header-m .nav-menu.blur-black .nav-con .nav-item .t{color:#fff}.bili-header-m .nav-menu.blur-black .nav-con .nav-item.home i{background-position:-855px -88px}.bili-header-m .nav-menu .up-load{position:relative;width:58px;height:42px}.bili-header-m .nav-menu .up-load .u-link{display:block;width:100%;height:48px;line-height:42px;text-align:center;font-size:14px;color:#fff;background-image:url(//s1.hdslb.com/bfs/seed/jinkela/header/images/up-load-btn.png)}.bili-header-m .nav-menu .up-load .upload-new-icon{position:absolute;width:54px;height:34px;top:4px;right:-53px;background:url(//s1.hdslb.com/bfs/seed/jinkela/header/images/up-new-iocn.png) no-repeat;z-index:20}.bili-header-m .nav-menu .up-load:hover .u-link{opacity:.9}.bili-header-m .nav-menu .up-load .up-nav{width:360px;position:absolute;right:0;top:42px;background:#fff;border-radius:0 0 4px 4px;box-shadow:0 2px 4px rgba(0,0,0,.16);overflow:hidden;z-index:1}.bili-header-m .nav-menu .up-load .up-nav li{cursor:pointer;text-align:center;width:72px;height:64px;transition:.2s;float:left;position:relative;background:#fff}.bili-header-m .nav-menu .up-load .up-nav li a{color:#f25d8e;display:block;width:100%;height:100%}.bili-header-m .nav-menu .up-load .up-nav li a .rect{display:block;width:20px;height:20px;margin:15px auto 2px;transition:.2s}.bili-header-m .nav-menu .up-load .up-nav li a .rect.i-art{background-position:-534px -919px}.bili-header-m .nav-menu .up-load .up-nav li a .rect.i-ap{background-position:-534px -983px}.bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vp{background-position:-471px -919px}.bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vm{background-position:-471px -982px}.bili-header-m .nav-menu .up-load .up-nav li a .rect.i-vc{background-position:-471px -1751px}.bili-header-m .nav-menu .up-load .up-nav li:hover{background:#e5e9ef}.bili-header-m .nav-menu .up-load .up-nav li:hover .rect{transform:translateY(-2px)}.bili-header-m .nav-menu .up-load .up-nav li .new{position:absolute;top:6px;right:0;width:22px;height:9px;background-position:-851px -412px}.bili-header-m .nav-menu .up-load .up-nav li .beta{position:absolute;top:6px;right:0;width:22px;height:9px;background-position:-854px -1307px}.bili-header-m .nav-menu .dd-bubble{position:absolute;z-index:1}.bili-header-m .profile-info{width:58px}.bili-header-m .profile-info .i-face{position:absolute;z-index:20;width:36px;height:36px;left:11px;top:0;transition:.3s}.bili-header-m .profile-info .i-face .face{border:0 solid #fff;width:100%;height:100%;border-radius:50%}.bili-header-m .profile-info .i-face .legalize{background-image:url(//s1.hdslb.com/bfs/seed/jinkela/header/images/user-auth.png);width:20px;height:20px;position:absolute;bottom:10px;right:7px;visibility:hidden;transition-delay:0s}.bili-header-m .profile-info .i-face .legalize.vip{background-position:-72px -52px}.bili-header-m .profile-info .i-face .legalize.p-ver{background-position:-38px -52px}.bili-header-m .profile-info .i-face .legalize.e-ver{background-position:-4px -52px}.bili-header-m .profile-info .i-face .pendant{position:absolute;width:84px;height:84px;left:-11px;bottom:-3px;visibility:hidden;transition-delay:0s}.bili-header-m .profile-info.on .i-face{left:-4px;top:15px;height:64px;width:64px}.bili-header-m .profile-info.on .i-face .face{border:2px solid #fff}.bili-header-m .profile-info.on .i-face .legalize{bottom:-4px;right:-3px;transition-delay:.28s;visibility:visible}.bili-header-m .profile-info.on .scale-in .face{width:48px;height:48px}.bili-header-m .profile-info.on .scale-in .legalize{bottom:10px;right:7px;transition-delay:.28s;visibility:visible}.bili-header-m .profile-info.on .scale-in .pendant{transition-delay:.28s;visibility:visible}.bili-header-m .head-banner{position:relative;z-index:199;height:170px;margin-top:-42px;background:#eee;background-position:center -10px;background-repeat:no-repeat}.bili-header-m .head-banner .banner-link{position:absolute;left:0;top:0;height:100%;width:100%}.bili-header-m .head-banner .head-content{position:relative;height:170px}.bili-header-m .head-banner .head-content .head-title{position:absolute;top:114px;left:255px;line-height:20px;padding:6px 10px;background-color:rgba(0,0,0,.68);color:#fff;border-radius:4px;font-size:14px;max-width:350px;opacity:0;transition:all .2s}.bili-header-m .head-banner .head-content .head-logo{position:absolute;width:220px;height:105px;left:24px;top:55px;background:transparent no-repeat 0;z-index:10}.bili-header-m .head-banner:hover .head-content .head-title{opacity:1}.bili-header-m .b-icon{display:inline-block;vertical-align:middle;width:12px;height:12px;background:url(//static.hdslb.com/images/base/icons.png) no-repeat}.bili-header-m .b-icon.b-icon-p-account,.bili-header-m .b-icon.b-icon-p-live,.bili-header-m .b-icon.b-icon-p-member,.bili-header-m .b-icon.b-icon-p-wallet{width:16px;height:16px}.bili-header-m .b-icon.b-icon-p-member{background-position:-472px -344px}.bili-header-m .b-icon.b-icon-p-account{background-position:-472px -407px}.bili-header-m .b-icon.b-icon-p-wallet{background-position:-472px -472px}.bili-header-m .b-icon.b-icon-p-live{background-position:-473px -855px}.bili-header-m .b-icon.b-icon-vp{background-position:-471px -919px}.bili-header-m .b-icon.b-icon-vm{background-position:-471px -982px}.bili-header-m .b-icon.b-icon-vc{background-position:-471px -1751px}.bili-header-m .b-icon.b-icon-arrow-r{background-position:-478px -218px;width:6px;height:12px;margin:-2px 0 0 5px}.bili-header-m .b-icon.b-icon-ap{background-position:-534px -983px}.bili-header-m .b-icon.b-icon-art{background-position:-534px -919px}.bili-header-m .b-icon.b-icon-app{background-position:-1371px -1175px;width:16px;height:21px}.bili-header-m .mini-wnd-nav{position:absolute;left:0;top:42px;background-color:#fff;width:320px;box-shadow:0 2px 4px rgba(0,0,0,.16);border:1px solid #e5e9ef;border-radius:0 0 4px 4px;z-index:200}.bili-header-m .mini-wnd-nav a{color:#222;transition:color .2s}.bili-header-m .mini-wnd-nav .list{padding-top:10px}.bili-header-m .mini-wnd-nav .list.history li{clear:both;position:relative;padding-left:38px}.bili-header-m .mini-wnd-nav .list.history li:before{left:26px}.bili-header-m .mini-wnd-nav .list.history li.timeline{color:#99a2aa;overflow:visible;height:0;padding:0;margin:10px 0;border-top:1px solid #e5e9ef;position:relative}.bili-header-m .mini-wnd-nav .list.history li.timeline:before{display:none}.bili-header-m .mini-wnd-nav .list.history li.timeline .date{background-color:#fff;position:absolute;top:-6px;left:0;z-index:10;padding:0 10px;height:12px;line-height:12px}.bili-header-m .mini-wnd-nav .list.history li.no-data{border:none;padding:0}.bili-header-m .mini-wnd-nav .list.history li a{max-width:none;float:inherit}.bili-header-m .mini-wnd-nav .list li{height:28px;line-height:28px;text-align:left;font-size:12px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;padding:0 12px 0 22px;position:relative}.bili-header-m .mini-wnd-nav .list li:before{content:"";display:block;position:absolute;top:13px;left:10px;width:4px;height:4px;border-radius:2px;background-color:#6d757a}.bili-header-m .mini-wnd-nav .list li:hover{background-color:#e5e9ef}.bili-header-m .mini-wnd-nav .list li.no-data{text-align:center;color:#aaa}.bili-header-m .mini-wnd-nav .list li a{overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:block}.bili-header-m .mini-wnd-nav .list li a:hover{color:#00a1d6}.bili-header-m .mini-wnd-nav .list li .link{overflow:hidden;white-space:nowrap;text-overflow:ellipsis;display:inline-block}.bili-header-m .mini-wnd-nav .read-more{display:block;margin:4px 12px 12px;background-color:#e5e9ef;text-align:center;border:1px solid #e0e6ed;height:22px;line-height:22px;color:#222;border-radius:4px}.bili-header-m .mini-wnd-nav .read-more:hover{background-color:#ccd0d7}.bili-header-m .mini-wnd-nav .m-w-loading{height:100px;line-height:100px;text-align:center}.slide-fade-enter-active,.slide-fade-leave-active{transition:all .3s}.slide-fade-enter,.slide-fade-leave-to{transform:translateY(5px);opacity:0}</style></head>

<body>
<div class="header head-top" >
    <div class="container-fluid">
        <div class="col-sm-12">
            <div class="col-xs-1" >
            </div>
            <div class="header-main">
                <div class="col-xs-8">
                    <div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
                        <a href="#"><img src="<%= basePath %>tian/showHelp/Gallery_files/logo3.png" alt="" ></a>
                    </div>
                    <div class="top-navg">
                        <span class="menu"> <img src="<%= basePath %>tian/showHelp/Gallery_files/icon.png" alt=" "></span>
                        <ul class="res">
                            <a href="#"><span class="res1">首页</span></a>
                            <a href="#"><span class="res2">二手</span></a>
                            <a class="active" href="#"><span class="res3">跑腿</span></a>
                            <a  href="#"><span class="res1">哈密社区</span></a>
                            <a href="#"><span class="res2">哈密认证</span></a>
                            <a href="#"><span class="res3">联系我们</span></a>
                        </ul>
                        <!-- script-for-menu -->
                        <script>
                            $( "span.menu" ).click(function() {
                                $( "ul.res" ).slideToggle( 300, function() {
                                    // Animation complete.
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="col-xs-2 banner-right">
                    <div id="person-pic" >

                        <div id="head-portrait" class="col-xs-5" >
                            <a href="#">
                                <img src="<%= basePath %>tian/showHelp/Gallery_files/头像.jpg"></img>
                            </a>
                        </div>

                        <div class="col-xs-7">
                            <div id="message">
                                <a href="#">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/通知3.png"></img>
                                </a>
                            </div>
                            <div id="exit">
                                <a href="#">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/登出.png" ></img>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

                <script>
                    $("#exit img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出点击时.png");
                        }
                    );
                    $("#exit img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出.png");
                        }
                    );

                    $("#message img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知点击时.png");
                        }
                    );

                    $("#message img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知3.png");
                        }
                    );
                </script>

            </div>
        </div>
        <div style="clear: both"></div>
    </div>
    </div>
    <div class="tab-content">
    <div class="nav-tab-bar">
        <%--<a href="" target="_self" class="logo"> </a>--%>
        <a href="javascript:selectInfos(1,1)" target="_self" class="tab-item " data-tab-id="0"> <span>帮我买</span>
        <div class="pointer"></div>
    </a> <a href="javascript:selectInfos(2,1)" target="_self" class="tab-item  " data-tab-id="2"> <span>帮我送</span> </a> <a href="javascript:selectInfos(3,1)" target="_self" class="tab-item  " data-tab-id="1"> <span>帮我取</span> </a> <a href="javascript:selectInfos(4,1)" target="_self" class="tab-item  " data-tab-id="28"> <span>代排队</span> </a>


        <!--<a href="#"target="_self" class="tab-item  " data-tab-id="3"> <span>生活</span> </a>
         <a href="#" target="_self" class="tab-item  " data-tab-id="29"> <span>兴趣</span> </a> <a href="#" target="_self" class="tab-item  " data-tab-id="16"> <span>轻小说</span> </a>
         <a href="#" target="_self" class="tab-item  " data-tab-id="17"> <span>科技</span> </a>
         <a href="#" target="_self" class="tab-item  " data-tab-id="17"> <span>科技</span> </a> -->

    </div>
    <div class="page-content">
        <div class="left-side">

            <!-- <span>loading...</span> -->

            <div class="carousel">
                <ul class="carousel-list" style="width: 400%; transform: translateX(-50%);">
                    <li class="carousel-item" data-carousel-index="0">
                        <a href="#" target="_blank"> <img src="<%= basePath %>tian/images/11.jpg" class="carousel-bg" alt="广告1" height="212px" width="680px"> </a>
                    </li>
                    <li class="carousel-item" data-carousel-index="1"> <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" target="_blank"> <img src="<%= basePath %>tian/images/bear.jpg" class="carousel-bg" data-bg-img="http://i0.hdslb.com/bfs/archive/8f2325f283c86789a86c82094d0708e0ee1437e9.jpg" onload="detailImg(this,680,212)" onerror="detailImg(this,680,212)" webpcheck="checked"> </a> </li>
                    <li class="carousel-item" data-carousel-index="2"> <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" target="_blank"> <img src="<%= basePath %>tian/images/bear.jpg" class="carousel-bg" data-bg-img="http://i0.hdslb.com/bfs/archive/45647a5e0931bf54afa318606beb508fee3834a2.jpg" onload="detailImg(this,680,212)" onerror="detailImg(this,680,212)" webpcheck="checked"> </a> </li>
                    <li class="carousel-item" data-carousel-index="3"> <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" target="_blank"> <img src="<%= basePath %>tian/images/bear.jpg" class="carousel-bg" data-bg-img="http://i0.hdslb.com/bfs/archive/4b0b416b349d370a48cd5946ac4592ccbca7c259.jpg" onload="detailImg(this,680,212)" onerror="detailImg(this,680,212)" webpcheck="checked"> </a> </li>
                </ul>
                <div class="titles">
                    <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" class="" data-title-index="0" target="_blank">广告1</a>
                    <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" class="" data-title-index="1" target="_blank">广告2</a>
                    <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" class="on" data-title-index="2" target="_blank">广告3</a>
                    <a href="<%= basePath %>tian/showHelp/showHelp_files/哔哩哔哩专栏.html" class="" data-title-index="3" target="_blank">广告4</a> </div>
                <ul class="indicator">
                    <li class="indicator-btn-holder">
                        <div class="indicator-btn" data-indicator-index="0"></div>
                    </li>
                    <li class="indicator-btn-holder">
                        <div class="indicator-btn" data-indicator-index="1"></div>
                    </li>
                    <li class="indicator-btn-holder">
                        <div class="indicator-btn on" data-indicator-index="2"></div>
                    </li>
                    <li class="indicator-btn-holder">
                        <div class="indicator-btn" data-indicator-index="3"></div>
                    </li>
                </ul>
            </div>
            <div class="partitio-name">
                <label>最热跑腿</label>
            </div>



            <div class="article-list" id="articlelist">
                <div class="article-list-holder">

                    <c:forEach items="${pageInfo.list}" var="helpInfo">
                        <div class="article-item item-tp-4" data-id="484261">
                            <div class="item-holder">
                                <div class="article-content">
                                    <div class="article-left-block">
                                        <a href="#" target="_blank" class="article-title-holder">

                                            <c:if test="${helpInfo.helpType==1}">
                                                <span class="article-title" title="帮我买">帮我买</span>
                                            </c:if>
                                            <c:if test="${helpInfo.helpType==2}">
                                                <span class="article-title" title="帮我送">帮我送</span>
                                            </c:if>
                                            <c:if test="${helpInfo.helpType==3}">
                                                <span class="article-title" title="帮我取">帮我取</span>
                                            </c:if>
                                            <c:if test="${helpInfo.helpType==4}">
                                                <span class="article-title" title="代排队">代排队</span>
                                            </c:if>

                                        </a>
                                        <div class="article-desc">
                                            <p>${helpInfo.name}   酬劳：${helpInfo.personPrice}元   截止日期：${helpInfo.endTime}</p>

                                        </div>

                                        <div class="article-info-bar">
                                            <a href="#" target="_blank" class="up-content">
                                                <span class="face-holder"><img src="<%= basePath %>tian/showHelp/showHelp_files/头像.jpg" class="face-img"></span>
                                                <span class="nick-name">${helpInfo.user.nickname}</span>
                                            </a>
                                            <a href="https://www.bilibili.com/read/douga#rid=4" target="_self">
                                                <span class="category">帮我取</span>
                                            </a>
                                            <span class="view">${helpInfo.clickCount}</span>
                                            <span class="like ">点赞量</span>
                                            <a href="#" target="_blank">
                                                <span class="reply">${helpInfo.commentCount}</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="cover-img">
                                        <a href="#" target="_blank">
                                            <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/bear.jpg);"></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                    <div class="article-item item-tp-4" data-id="515423">
                        <div class="item-holder">
                            <div class="article-content">
                                <div class="article-left-block"><a href="#" target="_blank" class="article-title-holder"><span class="article-title" title="【凯源】腐段子">【凯源】腐段子</span></a>
                                    <div class="article-desc">本文为转载文，原作者是【白依源】。“说你爱我！”王俊凯声音低沉，手上的速度却没有变慢。　　　　“不要…唔…嗯～”王源在愈来愈快的步伐中溢出呻·吟。　　　　“说！说你爱我！”那人加大力度，空气中弥漫奇特</div>
                                    <div class="article-info-bar"><a href="#" target="_blank" class="up-content">
                                        <span class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/0a4a84b0bdeadc31cc70639cc973daa03e65b78a.jpg@26w_26h.webp" class="face-img"></span>
                                        <span class="nick-name">KR-卡洛伊</span>
                                    </a>
                                        <a href="https://www.bilibili.com/read/lightnovel#rid=32" target="_self">
                                            <span class="category">短篇小说</span></a><span class="view">89</span><span class="like ">4</span><a href="https://www.bilibili.com/read/cv515423#comment&amp;from=category_0" target="_blank">
                                            <span class="reply">3</span></a></div>
                                </div>
                                <div class="cover-img"><a href="https://www.bilibili.com/read/cv515423?from=category_0" target="_blank">
                                    <div class="cover-image loaded" pre-style="background-image:url(https://i0.hdslb.com/bfs/article/9fb67e601d926ae3de301673d39af367fcdfa05a.png@257w_193h.webp)" style="background-image: url(&quot;https://i0.hdslb.com/bfs/article/9fb67e601d926ae3de301673d39af367fcdfa05a.png@257w_193h.webp&quot;);"></div>
                                </a></div>
                            </div>
                        </div>
                    </div>

                    <div class="paging2">

                        <form  onsubmit="return false" action="#" id="mainForm" method="post">
                            <input type="hidden" name="curPage" id="curPage"/>

                            <div class='page fix'>
                                共 <b>${pageInfo.total}</b> 条
                                <a href="javascript:selectInfos(${helpType},${pageInfo.firstPage})" class='first'>首页</a>
                                <c:if test="${!pageInfo.isFirstPage}">
                                    <a href="javascript:selectInfos(${helpType},${pageInfo.prePage})" class='pre'>上一页</a>
                                </c:if>
                                当前第<span>${pageInfo.pageNum}</span>页

                                <c:if test="${!pageInfo.isLastPage}">
                                    <a href="javascript:selectInfos(${helpType},${pageInfo.nextPage})" class='next'>下一页</a>
                                </c:if>
                                <a href="javascript:selectInfos(${helpType},${pageInfo.lastPage})" class='last'>末页</a>

                            </div>

                        </form>

                        <script>
                            function selectInfos(typeId,curPage){
                                $.ajax({
                                    type:"get",
                                    url:"${pageContext.request.contextPath}/help/selectInfos.action",
                                    data:"typeId="+typeId+"&curPage="+curPage,
                                    success:function(data){
                                        $("#articlelist").html(data);
                                    },
                                    error : function(){
                                        alert("nani");
                                    }
                                })
                            }
                        </script>
                    </div>
                </div>

            </div>

        </div>
        <div class="right-side">
            <div class="search-module">
                <div class="search-block">
                    <input placeholder="搜索跑腿相关">
                    <div class="search-icon"></div>
                    <ul class="search-word-panel" style="display: none;">
                        <li class="panel-title">
                            <div class="split-line"></div>
                            <p> <span></span> </p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="rank-module" id="rankHelp">
                <div class="rank-tabs-bar">
                    <label>排行榜</label>
                    <ul class="rank-tabs-list" >
                        <a href="javascript:sort(0,2)" ><li class="on">点击量</li></a>
                        <a href="javascript:sort(0,3)" style="color: #000;"><li>截止日期</li></a>
                        <a href="javascript:sort(0,4)"><li>标价</li></a>
                    </ul>
                    <div class="rank-module">
                        <ul class="rank-list">
                            <c:forEach items="${helpSorts}" var="helpInfo">
                                <li class="item"><span class="rank-index">${helpInfo.id}</span><a href="#" target="_blank" title="${helpInfo.title}">${helpInfo.title}</a></li>
                            </c:forEach>
                        </ul>
                        <a class="complete-rank" target="_blank" href="#">查看完整榜单</a>
                    </div>
                </div>


            </div>
            <script>
                function sort(schoolId,sortId) {
                    alert("1");
                    $.ajax(
                        {
//                    请求的方法
                            type:"post",
                            url:"${pageContext.request.contextPath}/help/selectByCondition.action",
//                    参数

                            data:"schoolId="+schoolId+"&sortId="+sortId,

                            success:function (data) {
                                    $("#rankHelp").html(data);
                            },
                            error : function(){
                                alert("nani");
                            }
                        }
                    )
                }

            </script>




            <div class="up-list">
                <div class="title">最新投稿的UP主
                    <div class="fresh-btn"></div>
                </div>
                <div class="up-item"><a href="https://space.bilibili.com/111638271/#!/" target="_blank" class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/a97cc3fb858201ce30317e7d5a7923f2182b5b50.jpg@52w_52h.webp"></a>
                    <div class="info-holder">
                        <div class="head"><a href="https://space.bilibili.com/111638271/#!/" target="_blank" class="nick-name">游戏日报官方账号</a>
                            <div class="follow " data-up-mid="111638271">关注</div>
                        </div>
                        <div class="dynamic"><span>刚刚投稿了 </span><a href="https://www.bilibili.com/read/cv515721" target="_blank" class="arc-title">DNF：最用心的6大职业盘点 只有他们还在贯彻格斗游戏的理念</a></div>
                    </div>
                </div>
                <div class="up-item"><a href="https://space.bilibili.com/21883928/#!/" target="_blank" class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/370ab88ac9f6ab764779c68137398b44e7f5245b.jpg@52w_52h.webp"></a>
                    <div class="info-holder">
                        <div class="head"><a href="https://space.bilibili.com/21883928/#!/" target="_blank" class="nick-name">RoKom</a>
                            <div class="follow " data-up-mid="21883928">关注</div>
                        </div>
                        <div class="dynamic"><span>1分钟前投稿了 </span><a href="https://www.bilibili.com/read/cv515719" target="_blank" class="arc-title">昆特牌—掠夺者猎人娱乐卡组分享</a></div>
                    </div>
                </div>
                <div class="up-item"><a href="https://space.bilibili.com/839544/#!/" target="_blank" class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/45609107920c06862e4c1f6bc1799fd4590c8ee7.jpg@52w_52h.webp"></a>
                    <div class="info-holder">
                        <div class="head"><a href="https://space.bilibili.com/839544/#!/" target="_blank" class="nick-name">新一说说</a>
                            <div class="follow " data-up-mid="839544">关注</div>
                        </div>
                        <div class="dynamic"><span>1分钟前投稿了 </span><a href="https://www.bilibili.com/read/cv515718" target="_blank" class="arc-title">大刘：漫威电影 流水线式的商业电影</a></div>
                    </div>
                </div>
                <div class="up-item"><a href="https://space.bilibili.com/265158073/#!/" target="_blank" class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/416568615bea610cca6a30373148ccdb8bdc2195.jpg@52w_52h.webp"></a>
                    <div class="info-holder">
                        <div class="head"><a href="https://space.bilibili.com/265158073/#!/" target="_blank" class="nick-name">樱桃小任</a>
                            <div class="follow " data-up-mid="265158073">关注</div>
                        </div>
                        <div class="dynamic"><span>1分钟前投稿了 </span><a href="https://www.bilibili.com/read/cv515716" target="_blank" class="arc-title">樱桃，你真的会挑选吗？</a></div>
                    </div>
                </div>
                <div class="up-item"><a href="https://space.bilibili.com/240082103/#!/" target="_blank" class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/1657ef91d7fbb9647b4f1fd9c399c8da6ccf2bdb.jpg@52w_52h.webp"></a>
                    <div class="info-holder">
                        <div class="head"><a href="https://space.bilibili.com/240082103/#!/" target="_blank" class="nick-name">你好28星</a>
                            <div class="follow " data-up-mid="240082103">关注</div>
                        </div>
                        <div class="dynamic"><span>1分钟前投稿了 </span><a href="https://www.bilibili.com/read/cv515713" target="_blank" class="arc-title">支持国产动漫，大爱我超神学院</a></div>
                    </div>
                </div>
            </div>

            <!--<div class="web-show-c">

                </div>-->
            <div class="more">
                <div class="top-bar">
                    <label>更多</label>
                </div>
                <a class="ac-link" href="https://www.bilibili.com/read/apply/" target="_blank">
                    <div class="link"> <span class="icon"> </span>
                        <p class="title">成为创作者</p>
                        <p class="info">申请成为专栏UP主</p>
                    </div>
                </a> <a href="https://www.bilibili.com/blackboard/help.html#%E4%B8%93%E6%A0%8F%E7%9B%B8%E5%85%B3" target="_blank">
                <div class="help"> <span class="icon"> </span>
                    <p class="title">专栏帮助</p>
                    <p class="info">查看专栏使用说明</p>
                </div>
            </a> </div>
        </div>
    </div>
</div>
</div>
<div class="to-top"> </div>
<%--<script src="<%= basePath %>tian/showHelp/showHelp_files/jquery.min.js.下载"></script>--%>
<%--<script type="text/javascript" charset="utf-8" src="<%= basePath %>tian/showHelp/showHelp_files/header.js.下载"></script>--%>
<%--<script src="<%= basePath %>tian/showHelp/showHelp_files/log-reporter.js.下载"></script>--%>
<%--<script>--%>
    <%--window.reportMsgObj = {}--%>
    <%--window.reportConfig = {--%>
        <%--sample: 1,--%>
        <%--errorTracker: false,--%>
        <%--resourceTracker: false,--%>
        <%--scrollTracker: false,--%>
        <%--msgObjects: 'reportMsgObj'--%>
    <%--}--%>
    <%--var reportScript = document.createElement('script');--%>
    <%--reportScript.src = "//s1.hdslb.com/bfs/seed/log/report/log-reporter.js";--%>
    <%--$(function () {--%>
        <%--document.getElementsByTagName('body')[0].appendChild(reportScript);--%>
    <%--})--%>
<%--</script>--%>
<%--<script type="text/javascript" src="<%= basePath %>tian/showHelp/showHelp_files/manifest.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载">--%>
<%--</script>--%>
<%--<script type="text/javascript" src="<%= basePath %>tian/showHelp/showHelp_files/vendor.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载">--%>

<%--</script>--%>
<%--<script type="text/javascript" src="<%= basePath %>tian/showHelp/showHelp_files/list.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载"></script>--%>
<%--<script src="<%= basePath %>tian/showHelp/showHelp_files/log-reporter.js.下载"></script>--%>

<%--<script src="file://s1.hdslb.com/bfs/seed/log/report/log-reporter.js"></script><script src="file://s1.hdslb.com/bfs/seed/log/report/log-reporter.js"></script>--%>



</body></html>
