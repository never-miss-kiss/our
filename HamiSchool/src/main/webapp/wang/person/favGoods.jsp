<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/19
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>喜欢的商品</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/base.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main.min.css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/mstr.js"></script>
    <%--<script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/jquery.js"></script>--%>
    <script type="text/javascript" async="" src="/wang/js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1226">
    <meta name="description" content="">

    <script type="text/javascript">
        function getPage(curPage) {


            //将隐藏域的值变成curPage
            $("#curPage").val(curPage);

//             触发表单的提交事件
            document.getElementById("mainForm").submit();

        }
    </script>

    <style>
        #nullGoods{
            font-size: 20px;
            color: #B0B0B0;
        }
    </style>


</head>
<body>
<div class="breadcrumbs">
    <div class="container">
        <a href=""
           onclick="">首页</a><span
            class="sep">&gt;</span><span>喜欢的商品</span></div>
</div>
<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="uc-nav-box">
                            <div class="box-hd">
                                <h3 class="title">订单中心</h3>
                            </div>
                            <div class="box-bd">
                                <ul class="uc-nav-list">
                                    <li ><a href="${pageContext.request.contextPath}/home/AllGoodsInUser.action"
                                           onclick="">我的商品</a>
                                    </li>
                                    <li><a href=""
                                           onclick="">我的跑腿</a>
                                    </li>
                                    <li><a href=""
                                           onclick="">我的任务</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="${pageContext.request.contextPath }/home/personalCenter.action" onclick="">我的个人中心</a>
                                </li>
                                <li><a href="" onclick="">消息通知<i class="J_miMessageTotal"></i></a>
                                </li>

                                <li class="active"><a href="<%= basePath%>/home/favGoodsInUser.action?userId=${user.userId}" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="${pageContext.request.contextPath}/home/forupdateUser.action?userId=${user.userId}" <%--target="_blank"--%>
                                       onclick="">个人信息</a>
                                </li>
                                <li><a href="" onclick="">修改密码</a>
                                </li>
                                <li><a href="" target="blank"
                                       onclick="">个人认证</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="span16">
                <div class="uc-box uc-main-box">
                    <div class="uc-content-box order-list-box">
                        <div class="box-hd">
                            <h1 class="title">喜欢的商品</h1>

                            <div class="more clearfix">
                                <ul class="filter-list J_orderType">
                                    <%--<li class="first active"><a href="" data-type="0">我的商品</a></li>--%>
                                    <%--<li><a id="J_unpaidTab" href="" data-type="7">买入商品</a></li>--%>
                                    <!--<li><a id="J_sendTab" href="https://static.mi.com/order/#type=8" data-type="8">我的任务</a></li>-->
                                </ul>

                                <form id="J_orderSearchForm" class="search-form clearfix" action="" method="get">
                                    <label for="search" class="hide">搜索</label>
                                    <input class="search-text" type="search" id="J_orderSearchKeywords" name="keywords" autocomplete="off" placeholder="输入商品名称">
                                    <input type="submit" class="search-btn iconfont" value="">
                                </form>
                            </div>
                        </div>
                        <div class="box-bd">
                            <form id="mainForm" method="get">
                            <%--<input type="hidden" name="curPage" id="curPage" />--%>
                            <div id="J_orderList">

                                <ul class="order-list">
                                    <%--<input type="hidden" name="curPage" id="curPage" />--%>
                                    <c:forEach var="goods" items="${pageInfo.list}">
                                        <li class="uc-order-item uc-order-item-finish">

                                            <div class="order-detail">
                                                <div class="order-summary">

                                                </div>
                                                <table class="order-detail-table">
                                                    <thead>
                                                    <tr>
                                                        <th class="col-main">
                                                            <p class="caption-info"><fmt:formatDate value="${goods.releaseTime}" pattern="yyyy-MM-dd hh:mm"/>
                                                                <span class="sep">|</span>${goods.name}
                                                                    <%-- <c:if test="${goods.status==2}">
                                                                         <span class="sep">|</span>请选择：
                                                                         <span class="sep">交易完成</span> || <span class="sep">下架商品</span>
                                                                     </c:if>
                                                                     <span class="sep">|</span>商品状态：已过期（交易完成）--%>
                                                            </p>
                                                        </th>
                                                        <c:if test="${goods.status==2 || goods.status == 3}">
                                                            <th class="col-sub">
                                                                <p class="caption-price">交易完成 || 下架商品<span class=""></span></p>
                                                            </th>
                                                        </c:if>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="order-items">
                                                            <ul class="goods-list">
                                                                <li>
                                                                    <div class="figure figure-thumb">
                                                                        <a href="" target="_blank">
                                                                            <img src="${goods.picture}" width="80" height="80" alt="${goods.remark}">
                                                                        </a>
                                                                    </div>
                                                                    <p class="name">
                                                                        <a href="https://item.mi.com/1181000047.html" target="_blank">${goods.remark}</a>
                                                                    </p>
                                                                    <p class="price">价格：${goods.price}</p>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                        <td class="order-actions">
                                                            <a class="btn btn-small btn-line-gray" href="">订单详情</a>
                                                            <a class="btn btn-small btn-line-gray" href="">删除</a>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </li>
                                    </c:forEach>
                                    <%--<li class="uc-order-item uc-order-item-finish">
                                        <div class="order-detail">
                                            <div class="order-summary">
                                                <div class="order-status">已收货</div>
                                            </div>
                                            <table class="order-detail-table">
                                                <thead>
                                                <tr>
                                                    <th class="col-main">
                                                        <p class="caption-info">2018年05月08日 18:44
                                                            <span class="sep">|</span>王文祥
                                                            <span class="sep">|</span>订单号：
                                                            <a href="https://order.mi.com/user/orderView/5180508967410736">5180508967410736</a>
                                                            <span class="sep">|</span>在线支付
                                                        </p>
                                                    </th>
                                                    <th class="col-sub">
                                                        <p class="caption-price">订单金额：
                                                            <span class="num">158.00</span>元
                                                        </p>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td class="order-items">
                                                        <ul class="goods-list">
                                                            <li>
                                                                <div class="figure figure-thumb">
                                                                    <a href="https://item.mi.com/1181000047.html" target="_blank">
                                                                        <img src="./我的订单 - 小米商城_files/pms_1522636275.74216007!80x80.jpg" width="80" height="80" alt="小米短袖T恤 两件装 黑色+白色 XL">
                                                                    </a>
                                                                </div>
                                                                <p class="name">
                                                                    <a href="https://item.mi.com/1181000047.html" target="_blank">小米短袖T恤 两件装 黑色+白色 XL</a>
                                                                </p>
                                                                <p class="price">89元 × 1</p>
                                                            </li>
                                                            <li>
                                                                <div class="figure figure-thumb">
                                                                    <a href="https://item.mi.com/1181100034.html" target="_blank">
                                                                        <img src="./我的订单 - 小米商城_files/pms_1521442676.48017520!80x80.jpg" width="80" height="80" alt="小米双单元半入耳式耳机 黑色">
                                                                    </a>
                                                                </div>
                                                                <p class="name">
                                                                    <a href="https://item.mi.com/1181100034.html" target="_blank">小米双单元半入耳式耳机 黑色</a>
                                                                </p>
                                                                <p class="price">69元 × 1</p>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td class="order-actions">
                                                        <a class="btn btn-small btn-line-gray" href="https://order.mi.com/user/orderView/5180508967410736">订单详情</a>
                                                        <a class="btn btn-small btn-line-gray" href="https://service.order.mi.com/apply/order/id/5180508967410736" target="_blank">申请售后</a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </li>
                                    <li class="uc-order-item uc-order-item-finish">
                                        <div class="order-detail"> <div class="order-summary">
                                            <div class="order-status">已收货</div>
                                        </div> <table class="order-detail-table">
                                            <thead>
                                            <tr>
                                                <th class="col-main">
                                                    <p class="caption-info">2017年12月19日 09:11
                                                        <span class="sep">|</span>王文祥
                                                        <span class="sep">|</span>订单号：
                                                        <a href="https://order.mi.com/user/orderView/5171219878850557">5171219878850557</a>
                                                        <span class="sep">|</span>在线支付
                                                    </p>
                                                </th>
                                                <th class="col-sub">
                                                    <p class="caption-price">订单金额：
                                                        <span class="num">10.00</span>元
                                                    </p>
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="order-items">
                                                    <ul class="goods-list">
                                                        <li>
                                                            <div class="figure figure-thumb">
                                                                <a href="https://item.mi.com/1163900021.html" target="_blank">
                                                                    <img src="./我的订单 - 小米商城_files/pms_1476688190.21955893!80x80.jpg" width="80" height="80" alt="10000mAh小米移动电源2 锖色">
                                                                </a>
                                                            </div>
                                                            <p class="name">
                                                                <a href="https://item.mi.com/1163900021.html" target="_blank">10000mAh小米移动电源2 锖色</a>
                                                            </p>
                                                            <p class="price">74元 × 1</p>
                                                        </li>
                                                        <li>
                                                            <div class="figure figure-thumb">
                                                                <a href="https://item.mi.com/1170100019.html" target="_blank">
                                                                    <img src="./我的订单 - 小米商城_files/pms_1483959427.41648754!80x80.jpg" width="80" height="80" alt="小米移动电源2(10000mAh)保护套 半透白"> </a>
                                                            </div>
                                                            <p class="name">
                                                                <a href="https://item.mi.com/1170100019.html" target="_blank">小米移动电源2(10000mAh)保护套 半透白</a>
                                                            </p> <p class="price">19元 × 1</p>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td class="order-actions">
                                                    <a class="btn btn-small btn-line-gray" href="https://order.mi.com/user/orderView/5171219878850557">订单详情</a>
                                                    <a class="btn btn-small btn-line-gray" href="https://service.order.mi.com/apply/order/id/5171219878850557" target="_blank">申请售后</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        </div>
                                    </li>--%>
                                </ul>
                            </div>
                            </form>




                            <div id="J_orderListPages">
                                <c:if test="${pageInfo.total == 0}">

                                    <span id="nullGoods">没有商品</span>

                                </c:if>
                                <c:if test="${pageInfo.total != 0}">
                                    <div class="xm-pagenavi">
                                            <%--<span class="numbers first"><span class="iconfont"></span></span>--%>
                                        <a href="javascript:getPage(${pageInfo.prePage})" class="pre"><span class="iconfont"></span></a>
                                        <span class="numbers current">${pageInfo.pageNum}</span>
                                            <%--<span class="numbers last"><span class="iconfont"></span></span>--%>
                                        <a href="javascript:getPage(${pageInfo.nextPage})" class='next'><span class="iconfont"></span></a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
