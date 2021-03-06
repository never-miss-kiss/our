<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>登录</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
    <script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
    <script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>   
            <c:if test="${param.info == '1' }">
  			<span style='color:red;font-size:9pt'>用户名或密码错误！</span>
			</c:if>
			
			<c:if test="${param.info == '2' }">
				<span style='color:red;font-size:9pt'>当前用户不存在！</span>
			</c:if>      
            <form action="${pageContext.request.contextPath }/adminLogin/adminlogin.action" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>IN后台管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="admin.nickname" placeholder="登录账号"  data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="admin.password" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>       
                  
                </div>
                <div style="padding:30px;">
                    <input type="submit" class="button button-block bg-main text-big input-big" value="登录">
                </div>
                <%--<div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>--%>
            </div>
            </form>          
        </div>
    </div>
</div>

</body>
</html>
