<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
<script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span> 添加内容</button>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">ID</th>
      <th width="20%">图片</th>
      <th width="15%">名称</th>
      <th width="30%">描述</th>
    <!--   <th width="10%">排序</th> -->
      <th width="15%">操作</th>
    </tr>
   
   <c:forEach var="e" items="${advert }">
	    <tr>
	      <td>${e.advertId }</td>     
	      <td><img src="${pageContext.request.contextPath }/wang/images/${e.imgURL }" alt="" width="120" height="50" /></td>
	      <td>${e.advertName }</td>
	      <td>${e.advertWriter }</td>
	      
	      <td><div class="button-group">
	    
	      <a class="button border-red" onclick="return confirm('确定要删除吗？');" href="${pageContext.request.contextPath }/homepage/homepage_deleteAdv?advert.advertId=${e.advertId}"><span class="icon-trash-o"></span> 删除</a>
	      </div></td>
	    </tr>
    </c:forEach>   
  </table>
</div>

<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加内容</strong></div>
  <div class="body-content">
    <form method="post" enctype="multipart/form-data" class="form-x" action="${pageContext.request.contextPath }/homepage/homepage_addAdv">    
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="advert.advertName" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
<!--       <div class="form-group">
        <div class="label">
          <label>URL：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="url" value=""  />
          <div class="tips"></div>
        </div>
      </div> -->
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
        	<div class="tipss">图片尺寸：1920*500</div>
          <input type='file' class="button input-file" name='imgUrl'>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>描述：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="advert.advertWriter" style="height:120px;" value=""></textarea>
          <div class="tips"></div>
        </div>
      </div>

      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>
