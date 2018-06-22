<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
<html>
<head>
    <title>新闻详情</title>
</head>
<body>
的11111111111111111111

<c:forEach items="${helpInfos}"  var="helpInfo">

    <a href="#">${helpInfo.name}</a><br/>

</c:forEach>

<div class="right-side">
    <div class="search-module1">
        <div class="search-block">
            <input placeholder="搜索学校">
            <div class="search-icon"></div>
            <ul class="search-word-panel" style="display: none">
                <li class="panel-title">
                    <div class="split-line"></div>
                    <p> <span>关键词</span> </p>
                </li>
                <li class="suggest-item">
                    <a class="content" href="<%=basePath %>">
                        <em class="suggest_high_light">夏</em>
                        <em class="suggest_high_light">目</em>友人帳伍
                    </a>
                    <div class="cancel"></div>
                </li>
            </ul>
        </div>
    </div>
</div>
    <script>
        $(".search-block input").keydown(function (event) {

            if(event.keyCode==	13||event.keyCode==32){

                alert("haha");
                var keyWord = $(".search-block input").val();

                $(".search-word-panel").prop("display","block");
                $(".search-word-panel").html("                        " +
                    "<li class=\"panel-title\">\n" +
                    "      <div class=\"split-line\"></div>\n" +
                    "      <p> <span>关键词</span> </p>\n" +
                    "</li>" +
                    "");
                $.ajax(
                    {
//                    请求的方法
                        type:"post",
                        url:"${pageContext.request.contextPath}/help/selectSchoolsByKeyWord.action",
//                    参数
                        dataType:"json",
                        data:"keyWord="+keyWord,
                        success:function (data) {
                            alert(data);
                            $("body").html(data);
//                            jsonData = JSON.parse(data);  //把后台传来的数据转成JSON格式
//                            for(var i=0;i<10;i++){
//                                if(jsonData[i]!=null){//这段话用于显示条目
//                                    $(".search-word-panel").append("                                <li class=\"suggest-item\">\n" +
//                                        "                                <a class=\"content\">\n" +
//                                        "                                \n" +jsonData[i][1]+
//                                        "                                </a>\n" +
//                                        "                                <div class=\"cancel\"></div>\n" +
//                                        "                                </li>");
//                                }else{
//                                    return;
//                                }
//                            }
                        },
                        error : function(){
                            alert("nani");
                        },
                    }
                )
            }
        });
        $(".search-block input").blur(function () {
            $(".search-word-panel").prop("display","block");
        });

    </script>


</body>
</html>
