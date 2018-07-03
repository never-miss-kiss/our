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
    <title>我的商品</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/base.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main.min.css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/mstr.js"></script>
    <%--<script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/jquery.js"></script>--%>
    <script type="text/javascript" async="" src="<%= basePath%>/wang/script/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1226">
    <meta name="description" content="">


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
        <a href="<%= basePath%>/forum/list.action"
           onclick="">首页</a><span
            class="sep">&gt;</span><span>我的商品</span></div>
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
                                    <li class="active"><a href="${pageContext.request.contextPath}/home/AllGoodsInUser.action"
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
                                <li><a href="<%= basePath%>home/favGoodsInUser.action?userId=${user.userId}" onclick="">喜欢的商品</a></li>
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
                            <h1 class="title">我的商品</h1>

                            <div class="more clearfix">
                                <ul class="filter-list J_orderType">
                                </ul>

                                <form id="J_orderSearchForm" class="search-form clearfix" action="" method="get">
                                    <label for="search" class="hide">搜索</label>
                                    <input class="search-text" type="search" id="J_orderSearchKeywords" name="keywords" autocomplete="off" placeholder="输入商品名称">
                                    <input type="submit" class="search-btn iconfont" value="">
                                </form>
                            </div>

                        </div>
                        <div class="box-bd">
                            <form action="<%= basePath%>/home/AllGoodsInUser.action" id="mainForm" method="get">
                            <input type="hidden"  name="curPage" id="curPage" />
                            <div id="J_orderList">
                                <ul class="order-list">
                                    <%--<input type="hidden" name="curPage" id="curPage" />--%>
                                    <c:forEach var="goods" items="${pageInfo.list}">
                                        <li class="uc-order-item uc-order-item-finish" id="${goods.goodsId}_Goods">
                                            <div class="order-detail">
                                                <div class="order-summary">
                                                </div>
                                                <table class="order-detail-table">
                                                    <thead>
                                                    <tr >
                                                        <th class="col-main">
                                                            <p class="caption-info"><fmt:formatDate value="${goods.releaseTime}" pattern="yyyy-MM-dd hh:mm"/>
                                                                <span class="sep">|</span>${goods.name}
                                                            </p>
                                                        </th>
                                                        <c:if test="${goods.status==2 || goods.status == 3}">
                                                            <th class="col-sub">
                                                                <p class="caption-price">交易完成 || 下架商品<span class=""></span></p>
                                                            </th>
                                                        </c:if>
                                                        <c:if test="${goods.status==1}">
                                                            <th class="col-sub">
                                                                <p class="caption-price">已过期<span class=""></span></p>
                                                            </th>
                                                        </c:if>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="order-items">
                                                            <ul class="goods-list">
                                                                <li>
                                                                    <input type="hidden" value="${goods.goodsId}" id="gid">
                                                                    <div class="figure figure-thumb">
                                                                        <a href="" target="_blank">
                                                                            <img src="<%= basePath %>zhu/img/goodsPic/${goods.picture}" width="80" height="80" alt="${goods.remark}">
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
                                                            <a class="btn btn-small btn-line-gray" href="<%= basePath%>goods/findGoodsById.action?goodsId=${goods.goodsId}">商品详情</a>
                                                            <a class="btn btn-small btn-line-gray" href="javascript:void (0)" onclick="removeGoods()">删除</a>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </li>
                                    </c:forEach>
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
                                        <c:if test="${!pageInfo.isFirstPage}">
                                            <a href="javascript:getPage(${pageInfo.prePage})" class="pre"><span class="iconfont"></span></a>
                                        </c:if>
                                                <span class="numbers current">${pageInfo.pageNum}</span>
                                            <%--<span class="numbers last"><span class="iconfont"></span></span>--%>
                                                <c:if test="${!pageInfo.isLastPage}">
                                                    <a href="javascript:getPage(${pageInfo.nextPage})" class='next'><span class="iconfont"></span></a>
                                                </c:if>
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
<script type="text/javascript">
    function removeGoods() {
        var id = document.getElementById("gid")
        if(confirm("确定要删除吗？")){
            var url = '<%= basePath%>home/deleteGoods.action';
            $.get(url,"goodsId="+id,function (data) {
                if(data == '1'){
                    var $id = id+"_Goods";
                    var li = $("#"+$id);
                    li.remove();
                    alert("删除成功！")
                }else{
                    alert("删除失败")
                }
            })
        }
    }
</script>
<script type="text/javascript">
    function getPage(curPage) {
        //将隐藏域的值变成curPage
        $("#curPage").val(curPage);
//             触发表单的提交事件
        document.getElementById("mainForm").submit();
    }
</script>
</body>
</html>
