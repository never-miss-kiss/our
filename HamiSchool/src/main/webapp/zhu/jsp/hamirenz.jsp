<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html >
<head>
<meta charset="UTF-8">
<title>CSS3登录注册窗口界面滑动切换特效</title>
  <link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
  <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/jquery-1.12.1.min.js"></script>
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
          <label class="col-sm-4 control-label">昵称:<span></span></label>
          <input type="text" class="form-control"  placeholder="请输入昵称">
          <label class="col-sm-4 control-label">学校:</label>
          <input type="text" class="form-control"  placeholder="请输入完整学校名称">
          <label class="col-sm-4 control-label">联系方式:</label>
          <div class="col-sm-10">
            <div class="contact">
            <div class="radio i-checks">
              <label>
                <input type="radio" checked value="手机" name="contacttype"> <i></i>手机</label>
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
          <label class="col-sm-4 control-label">联系号码:<span></span></label>
          <input type="text" name="contactnum" placeholder="请填写您的手机号，QQ，微信或者邮箱" class="form-control">
          <div class="submit">
            <p class="btn btn_login onclick="submit_form1()">提交申请</p>
          </div>
        </div>
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>个人认证</h2>
          <label class="col-sm-4 control-label">姓名:<span></span></label>
          <input type="text" class="form-control"  placeholder="请输入真实姓名">
          <label class="col-sm-4 control-label">证件号:</label>
          <input type="text" class="form-control"  placeholder="请输入证件号码">
          <label class="col-sm-4 control-label">学校:</label>
          <input type="text" class="form-control"  placeholder="请输入完整学校名称">
          <label class="col-sm-4 control-label">证件照片:</label>
          <input type="file" id="exampleInputFile"/>
          <div class="submit">
            <p class="btn btn_sign_up onclick="submit_form2()">提交认证</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="<%= basePath %>zhu/js/index.js"></script>

</body>
</html>

