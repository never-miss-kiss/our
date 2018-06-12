<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
	<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
</head>

<style>
td{
   text-align: center;
}
</style>
<script type="text/javascript">
var typetext;
var publish;
var receive;
$(document).ready(function() {
	$(".typetext").click(function() {
		$("#typetext_1").text($(this).text());
		$("#typetext_2").val($(this).text());
		typetext=$(this).text();
		$(".button-group, .drop").removeClass("open");
	});

	$(".legworktype").click(function() {
		$("#legworktype_1").text($(this).text());
		$("#legworktype_2").val($(this).text());
		$(".button-group, .drop").removeClass("open");
	});
});

function IsTypeText(pageNow,pageSize)
{
     if($("#typetext_2").val()=="") 
     {
        alert("请选择您要查询的类别发布或接受的跑腿任务！！！");
        return false;
     }
     else
     {
	       $.ajax({  
                type: "POST",  
                url:"${pageContext.request.contextPath }/adminLegwork/adminLegwork_queryLegWorkByCondition?pageNow="+pageNow+"&&pageSize="+pageSize+"",  
                data:$('#myForm').serialize(),// 序列化表单值  
                async: false,  
                success: function(data) {  
                 $("#info").html("");
                   var pageing=eval("("+data+")");
                   var json;
                   if(typetext=="发布的跑腿任务")
                   {                  
                      json=pageing.publishs;
                      $.each(json, function (index) { 
                        var state;
                        publish= JSON.stringify(json[index]);
                        if(json[index].legWork.state==0)  state="未接受";
                        else state="已接受";
                        $("#info").append(
                            "<tr>"+
                            "<td>" + json[index].user.nickname + "</td>" + 
                            "<td>" + json[index].legWork.legKind.legKindName  + "</td>" +
                            "<td>" + json[index].legWork.description + "</td>"+ 
                            "<td>" + json[index].legWork.price + "</td>" +
                            "<td>" + json[index].legWork.address + "</td>"+ 
                            "<td>" + json[index].legWork.receiver + "</td>" +
                            "<td>" + json[index].legWork.receiver_tel  + "</td>" +
                            "<td>" + json[index].legWork.pubDate + "</td>"+ 
                            "<td>" + json[index].legWork.deadline  + "</td>"+
                            "<td>"+state+"</td>"+ 
                            "<td>" + "<button class='button border-dot' onclick='deletepublish(this)' style='color: #e33'>删除</button>" + "</td>"+
                            "</tr>")
                         });
                    }
                    else
                    {
                       json=pageing.receives;
                       $.each(json, function (index) {
                         var state;  
                         receive= JSON.stringify(json[index]);
                         if(json[index].legWork.state==0)  state="未接受";
                         else state="已接受";
                         $("#info").append(
                            "<tr>"+
                            "<td>" + json[index].user.nickname + "</td>" + 
                            "<td>" + json[index].legWork.legKind.legKindName  + "</td>" +
                            "<td>" + json[index].legWork.description + "</td>"+ 
                            "<td>" + json[index].legWork.price + "</td>" +
                            "<td>" + json[index].legWork.address + "</td>"+ 
                            "<td>" + json[index].legWork.receiver + "</td>" +
                            "<td>" + json[index].legWork.receiver_tel  + "</td>" +
                            "<td>" + json[index].legWork.pubDate + "</td>"+ 
                            "<td>" + json[index].legWork.deadline  + "</td>"+
                            "<td>" +state + "</td>"+ 
                            "<td>" + "<button class='button border-dot' onclick='deletereceive(this)' style='color: #e33'>删除</button>" + "</td>"+
                            "</tr>")
                       });
                    }
                    $("#page").html("");
                  if(json!="")
                  {
                    if(pageing.pageNow!=1)
                    {
                      $("#page").append(
                       "<a href='Javascript:void(0)' onclick='IsTypeText(1,"+pageing.pageSize+")'>首页</a>&nbsp"+
                       "<a href='Javascript:void(0)' onclick='IsTypeText("+pageing.pageNow+"-1,"+pageing.pageSize+")'>上一页</a>&nbsp")
                     }
                     if(pageing.pageNow!=pageing.pageCount)
                     {
                       $("#page").append(
                       "<a href='Javascript:void(0)' onclick='IsTypeText("+pageing.pageNow+"+1,"+pageing.pageSize+")'>下一页</a>&nbsp"+
                       "<a href='Javascript:void(0)' onclick='IsTypeText("+pageing.pageCount+","+pageing.pageSize+")'>尾页</a>&nbsp")
                      }
                       $("#page").append("当前<span style='color:red'>"+pageing.pageNow+"</span>/"+pageing.pageCount+"页&nbsp");
                   }
                   else
                   {
                        $("#info").append("<tr><td colspan='11' style=' text-align: center; padding-top: 4%;'><span style='font-size: 40pt; font-family: 微软雅黑; color: #ddd;'>对不起，没有相关记录！！！</span></td></tr>");  
                   }
		       }
	      });
      }
}

function deletepublish(obj)
{
    var res = confirm('您确定要删除该条跑腿记录吗！！！');  
    if(res == true)  
    {  
         $.ajax({  
                type: "POST",  
                url:"${pageContext.request.contextPath }/adminLegwork/adminLegwork_deleteLegWorkById",  
                data:{typetext:typetext,str_publish:publish},// 序列化表单值  
                async: false,  
                success: function() {  
                    $(obj).parents("tr").remove();    
                },
                error: function () {//ajax请求失败后触发的方法
                    alert("删除失败！！！");//弹出错误信息
                }
	    });
    }          
}

function deletereceive(obj)
{
    var res = confirm('您确定要删除该条跑腿记录吗！！！');  
    if(res == true)  
    {  
         $.ajax({  
                type: "POST",  
                url:"${pageContext.request.contextPath }/adminLegwork/adminLegwork_deleteLegWorkById",  
                data:{typetext:typetext,str_receive:receive},
                async: false,  
                success: function() {  
                    $(obj).parents("tr").remove();    
                },
                error: function () {//ajax请求失败后触发的方法
                    alert("删除失败！！！");//弹出错误信息
                }
	    });
    }          
}
</script>

  <body>
<form id="myForm">
		<div class="input-inline clearfix">
			<div class="button-group" style=" float:left">
				<button type="button" class="button dropdown-toggle">
					<span id="typetext_1">请选择查询发布或接受的任务</span><span class="downward"></span>
				</button>
				<input name="typetext" type="hidden" id="typetext_2" value="" />
				<ul class="drop-menu" style="width: 224px;">
					<li class="typetext"><a href="#">发布的跑腿任务</a></li>
					<li class="typetext"><a href="#">接受的跑腿任务</a></li>
				</ul>
			</div>
			<div class="button-group" style=" float:left">
				<button type="button" class="button dropdown-toggle">
					<span id="legworktype_1">请选择要查询的跑腿类别</span><span class="downward"></span>
				</button>
				<input name="legworktype" type="hidden" id="legworktype_2" value="" />
				<ul class="drop-menu" style="width: 196px;">
					<c:forEach var="l" items="${legworkkinds }">
						<li class="legworktype" value="${l.legKindId}"><a href="#">${l.legKindName}</a></li>
					</c:forEach>
				</ul>
			</div>
			<input type="text" class="input" id="description" name="description"
				size="80" placeholder="请输入要查询的跑腿名称" value="" style="height: 34px;" />
			<input class="button" type="button" value="查询" style="width: 100px"
				onclick="IsTypeText()" />
		</div>
	</form>
	<table class="table table-hover">
	      <tr>
	         <th>发布用户</th>
	         <th>类别</th>
	         <th>内容</th>
	         <th>价格(RMB)</th>
	         <th>收货地址</th>
	         <th>收货人</th>
	         <th>收货人联系方式</th>
	         <th>发布日期</th>
	         <th>截止日期</th>
	         <th>状态</th>
	         <th>操作</th>
	      </tr>
	      <tbody id="info">
	          <tr><td colspan='11' style=' text-align: center; padding-top: 4%;'><span style='font-size: 40pt; font-family: 微软雅黑; color: #ddd;'>请选择您要查询的内容！！！^_^</span></td></tr>
	      </tbody>
	</table>
	<div class="page" style="text-align:center;left: 40%; top:95%; position:fixed" id="page"> 
    </div>
  </body>
  
</html>
