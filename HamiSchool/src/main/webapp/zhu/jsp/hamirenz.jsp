﻿<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
<meta charset="UTF-8">
<title>哈密认证</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<%= basePath %>zhu/pintuer/pintuer.css" />
  <script type="text/javascript" src="<%= basePath %>zhu/pintuer/jquery.js"></script>
  <script type="text/javascript" src="<%= basePath %>zhu/pintuer/pintuer.js"></script>
  <%--<script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>--%>


  <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<%= basePath %>zhu/css/style.css">

  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

  <!--Gallery栏目框-->
  <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
  <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
  <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
  <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
  <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
  <!--Gallery栏目框end-->

  <link href="<%= basePath %>bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="<%= basePath %>zhu/css/font-awesome.min.css">
  <link href="<%= basePath %>zhu/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
  <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
  <script src="<%= basePath %>zhu/js/fileinput.js" type="text/javascript"></script>
  <script src="<%= basePath %>zhu/js/fileinput_locale_de.js" type="text/javascript"></script>
  <script src="<%= basePath %>zhu/js/fileinput_locale_zh.js" type="text/javascript"></script>
  <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>



  <style>
    .contact{float: left;padding: 5px;left:15px;margin-top:-13px;margin-bottom: -5px;}
    .submit{margin-top: 10px;margin-left:15%}
    .p1{display:none;color: green}

  </style>
</head>
<body><script src="/demos/googlegg.js"></script>

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
              <a href="<%=basePath%>tian/index/index.jsp"><span class="res1">首页</span></a>
              <a href="<%=basePath%>goods/findAllGoods.action?#sa"><span class="res2">二手</span></a>
              <a class="active" href="<%=basePath%>help/selectAllHelps.action"><span class="res3">跑腿</span></a>
              <a  href="<%=basePath%>forum/list.action"><span class="res1">社区</span></a>
              <a href="<%=basePath%>zhu/jsp/hamirenz.jsp"><span class="res2">认证</span></a>
              <a href="<%=basePath%>tian/index/index.jsp"><span class="res3">Callus</span></a>
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
              <a href="<%= basePath %>home/personalCenter.action">
                <c:if test="${userInfo.photo == null}">
                  <img src="<%= basePath %>profilePicture/0.jpg"></img>
                </c:if>
                <c:if test="${userInfo != null}">
                  <img src="<%= basePath %>profilePicture/${userInfo.photo}"></img>
                </c:if>
              </a>
            </div>

            <div class="col-xs-7">
              <div id="message">
                <a href="#">
                  <%--<img src="<%= basePath %>tian/showHelp/Gallery_files/通知3.png"></img>--%>
                </a>
              </div>
              <div id="exit">
                <a href="<%=basePath%>loginpage/exit.action">
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
<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <c:if test="${info == '1'}"><p style="color: green;font-size:24px">学校申请提交成功，请等待通知</p></c:if>
        <c:if test="${info == '2'}"><p style="color: green;font-size: inherit ">个人申请提交成功，请等待通知</p></c:if>
        <c:if test="${info == '3'}"><p style="color: red;font-size: inherit ">学校申请提交失败，学校名有误</p></c:if>
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;开通学校</h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;请点击开通，填写相关信息</p>
            <button class="btn_login" onClick="cambiar_login()">开通</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;个人认证</h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;请点击认证，填写相关信息</p>
            <button class="btn_sign_up" onClick="cambiar_sign_up()">认证</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="<%= basePath %>zhu/img/hamirenz/po.jpg" alt="" /> </div>
      </div>
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="<%= basePath %>zhu/img/hamirenz/po.jpg" alt="" /> </div>
        <div class="cont_form_login"> <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
          <h2>开通学校</h2>
          <form class="form-horizontal" action="${pageContext.request.contextPath}/certify/addSchool.action" method="post" id="form1" onclick="submit_form1()">
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="uname" style="text-align:left">昵称:</label>
            </div>
            <div class="col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="uname" name="uname" size="50" data-validate="required:必填" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入昵称" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="school" style="text-align:left">学校:</label>
            </div>
            <div class=" col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="school" name="school" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入完整学校名称" />
            </div>
          </div>

            <label class="col-sm-4 control-label">联系方式:</label>

          <div class="col-sm-12   ">
            <div class="contact">
            <div class="radio i-checks">
              <label>
                <input type="radio"  checked value="手机" name="contacttype"> <i></i>手机</label>
            </div>
            </div>
            <div class="contact">
            <div class="radio i-checks">
              <label>
                <input type="radio" value="QQ" name="contacttype"> <i></i>QQ</label>
            </div>
            </div>
            <div class="contact">
            <div class="radio i-checks">
              <label>
                <input type="radio" value="微信" name="contacttype"> <i></i>微信</label>
            </div>
            </div>
            <div class="contact">
            <div class="radio i-checks">
              <label>
                <input type="radio" value="邮箱" name="contacttype"> <i></i>邮箱</label>
            </div>
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-4 control-label">
              <label for="tel" style="text-align:left">联系号码:</label>
            </div>
            <div class="col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="tel" name="tel" size="50" data-validate="required:必填,number:必须为数字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请填写您的手机号，QQ，微信或者邮箱" />
            </div>
          </div>
          <div class="submit">
            <%--<p class="btn btn_login onclick="submit_form1()">提交申请</p>--%>
              <button type="submit" class="btn btn_login" >提交申请</button>
          </div>
          </form>
        </div>
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>个人认证</h2>
          <form class="form-horizontal" action="${pageContext.request.contextPath}/certify/personApplication.action" method="post" id="form2" onclick="submit_form2()">
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="pname" style="text-align:left">姓名:</label>
            </div>
            <div class="col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="pname" name="pname" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入真实姓名" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="zjh" style="text-align:left">证件号:</label>
            </div>
            <div class="col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="zjh" name="zjh" size="50" data-validate="required:必填,number:必须为数字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入证件号码" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="pschool" style="text-align:left">学校:</label>
            </div>
            <div class="col-sm-12 field ">
              <input type="text"  style="text-align:left" class="input" id="pschool" name="pschool" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入完整学校名称" />
            </div>
          </div>
          <div class="form-group ">
            <label class="col-sm-4 control-label">证件照片:</label>
          </div>

        <form enctype="multipart/form-data" class="col-sm-12 ">
          <input id="file-0" class="file" type="file" multiple data-min-file-count="1">
        </form>


          <div class="submit">
            <%--<p class="btn btn_sign_up ">提交认证</p>--%>
            <button type="submit" class="btn btn_sign_up">提交认证</button>
          </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="form-group">

<script src="<%= basePath %>zhu/js/index.js"></script>
<script type="text/javascript">
  onload = submit_form1;
  function submit_form1() {
      var flag = false;
      var uname = document.getElementById("uname").value();
      var school = document.getElementById("school").value();
      var tel = document.getElementById("tel").value();
      var title = document.getElementById("title").value();
      //alert("uname")
      alert(flag);
      if(uname != null && !uname.trim().equals("")){
          flag = true;
      }
      if(school != null && !school.trim().equals("")){
          flag = true;
      }else{
          flag = false;
      }
      if(tel != null && !tel.trim().equals("")){
          flag = true;
      }else{
          flag = false;
      }
      if(flag==true){
          alert(flag);
          var form1 = document.getElementById("form1");
          form1.submit();
          alert("提交成功，请等待通知！");
      }
      return flag;
  }
</script>
<script type="text/javascript">
    onload = submit_form2 ;
    function submit_form2() {
        //alert("1")
        var flag = false;
        var uname = document.getElementById("pname").value();
        var school = document.getElementById("pschool").value();
        var tel = document.getElementById("zjh").value();
//        var title = document.getElementById("title").value();
        alert("uname")
        if(uname != null && !uname.trim().equals("")){
            flag = true;
        }
        if(school != null && !school.trim().equals("")){
            flag = true;
        }else{
            flag = false;
        }
        if(tel != null && !tel.trim().equals("")){
            flag = true;
        }else{
            flag = false;
        }
        if(flag==true){
            var form2 = document.getElementById("form2");
            form2.submit();
            alert("提交成功，请等待通知！");
        }
        return flag;
    }
</script>
  <script>
      $("#file-0").fileinput({
          'allowedFileExtensions' : ['jpg', 'png','gif'],
      });
      /*
      $(".file").on('fileselect', function(event, n, l) {
          alert('File Selected. Name: ' + l + ', Num: ' + n);
      });
      */
      $(".btn-warning").on('click', function() {
          if ($('#file-4').attr('disabled')) {
              $('#file-4').fileinput('enable');
          } else {
              $('#file-4').fileinput('disable');
          }
      });
      $(".btn-info").on('click', function() {
          $('#file-4').fileinput('refresh', {previewClass:'bg-info'});
      });
      /*
      $('#file-4').on('fileselectnone', function() {
          alert('Huh! You selected no files.');
      });
      $('#file-4').on('filebrowse', function() {
          alert('File browse clicked for #file-4');
      });
      */
      $(document).ready(function() {
          $("#test-upload").fileinput({
              'showPreview' : false,
              'allowedFileExtensions' : ['jpg', 'png','gif'],
              'elErrorContainer': '#errorBlock'
          });
          /*
          $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
              alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
          });
          */
      });
  </script>
</body>
</html>

