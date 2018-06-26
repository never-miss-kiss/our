﻿<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html >
<head>
<meta charset="UTF-8">
<title>哈密认证</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<%= basePath %>zhu/pintuer/pintuer.css" />
  <link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
  <script type="text/javascript" src="<%= basePath %>zhu/pintuer/jquery.js"></script>
  <script type="text/javascript" src="<%= basePath %>zhu/pintuer/pintuer.js"></script>
  <%--<link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />--%>
  <%--<script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/jquery-1.12.1.min.js"></script>--%>
  <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<%= basePath %>zhu/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

  <style>
    .contact{float: left;padding: 5px;left:15px;margin-top:-13px;margin-bottom: -5px;}
    .submit{margin-top: 10px;left:25%}
  </style>
</head>
<body><script src="/demos/googlegg.js"></script>

<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>开通学校</h2>
            <p>请点击开通，填写相关信息</p>
            <button class="btn_login" onClick="cambiar_login()">开通</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>个人认证</h2>
            <p>请点击认证，填写相关信息</p>
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
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="uname" name="uname" size="50" data-validate="required:必填" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入昵称" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="school" style="text-align:left">学校:</label>
            </div>
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="school" name="school" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入完整学校名称" />
            </div>
          </div>
          <label class="col-sm-4 control-label">联系方式:</label>
          <div class="col-sm-10">
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
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="tel" name="tel" size="50" data-validate="required:必填,number:必须为数字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请填写您的手机号，QQ，微信或者邮箱" />
            </div>
          </div>
          <div class="submit">
            <%--<p class="btn btn_login onclick="submit_form1()">提交申请</p>--%>
              <button type="submit" class="btn btn_login">提交申请</button>
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
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="pname" name="pname" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入真实姓名" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="zjh" style="text-align:left">证件号:</label>
            </div>
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="zjh" name="zjh" size="50" data-validate="required:必填,number:必须为数字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入证件号码" />
            </div>
          </div>
          <div class="form-group form-tips">
            <div class="col-sm-3 control-label">
              <label for="pschool" style="text-align:left">学校:</label>
            </div>
            <div class=" field ">
              <input type="text"  style="text-align:left" class="input" id="pschool" name="pschool" size="50" data-validate="required:必填,chinese:必须为汉字" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入完整学校名称" />
            </div>
          </div>
          <div class="form-group ">
            <label class="col-sm-4 control-label">证件照片:</label>
            <div class="field">
              <input type="file" id="exampleInputFile"/>
            </div>
           </div>
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

<script src="<%= basePath %>zhu/js/index.js"></script>
<script>
  onload = submit_form1 ;
  function submit_form1() {
      var flag = false;
      var uname = document.getElementById("uname").value();
      var school = document.getElementById("school").value();
      var tel = document.getElementById("tel").value();
      var title = document.getElementById("title").value();
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
          var form1 = document.getElementById("form1");
          form1.submit();
          alert("提交成功，请等待通知！");
      }
      return flag;
  }
</script>
<script>
    onload = submit_form2 ;
    function submit_form2() {
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
</body>
</html>

