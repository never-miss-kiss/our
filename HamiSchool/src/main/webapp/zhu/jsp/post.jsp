<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jQuery Contact Form Plugin: FFForm</title>
    <link href="<%= basePath %>zhu/css/demo.css" rel="stylesheet" type="text/css">
    <script src="<%= basePath %>js/jquery-1.12.1.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="<%= basePath %>js/jquery-1.12.1.min.js" type="text/javascript"></script>
    <script src="<%= basePath %>js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
     <script src="<%= basePath %>js/jquery.ffform.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#form').ffform({ animation: 'flip', submitButton: '#submit', validationIndicator: '#validation', errorIndicator: '#error', successIndicator: '#success', 'fields': [{ 'id': 'name', required: true, requiredMsg: 'Name is required', type: 'alpha', validate: true, msg: 'Invalid Name' }, { 'id': 'email', required: true, requiredMsg: 'E-Mail is required', type: 'email', validate: true, msg: 'Invalid E-Mail Address' }, { 'id': 'phone', required: false, type: 'custom', validate: false, msg: 'Invalid Phone #' }, { 'id': 'message', required: false, type: 'text', validate: false, msg: ''}] });
        });
    </script>
    <style type="text/css">
        body{background-color: navajowhite}
    </style>
</head>
<body style="">
    <section id="getintouch" class="bounceIn animated">
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>分布二手信息</span>
            </h1>
        </div>
        <div class="container" style="height: 700px;">
            <form class="contact" action="#" method="post" id="form">
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        标题</label>
                </div>
                <div class="ctrl">
                    <input type="text"  data-required="true" data-validation="text"
                           data-msg="Invalid Name" placeholder="请输入标题">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        详情</label>
                </div>
                <div class="ctrl">
                    <textarea rows="3" cols="4" placeholder="请输入详情"></textarea>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        图片</label>
                </div>
                <div class="ctrl">
                    <<input type="file" >
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        交易地点</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="email" name="email" data-required="true" data-validation="email"
                        data-msg="Invalid E-Mail" placeholder="宿舍、教学楼、食堂等">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        价格</label>
                </div>
                <div class="ctrl">
                    <input type="text"  placeholder="请输入价格">
                </div>
            </div>
            <div class="form-group row ">
                <label class="col-sm-3 control-label">学校：</label>
                <div class="col-sm-8">
                    <select id="school" name="school" data-placeholder="选择学校..." class="chosen-select " style="width:100%;" tabindex="2">
                        <option checked value="1" hassubinfo="true">桂林电子科技大学</option><option  value="2" hassubinfo="true">广西师范大学</option><option  value="3" hassubinfo="true">桂林理工大学</option><option  value="4" hassubinfo="true">桂林航天工业学院</option><option  value="5" hassubinfo="true">桂林理工大学博文管理学院</option><option  value="6" hassubinfo="true">广西师范大学漓江学院</option><option  value="7" hassubinfo="true">桂林医学院</option><option  value="8" hassubinfo="true">桂林旅游学院</option><option  value="9" hassubinfo="true">桂林师范高等专科学校</option><option  value="10" hassubinfo="true">江西中医药大学</option><option  value="13" hassubinfo="true">江西中医药大学科技学院</option><option  value="14" hassubinfo="true">南昌大学</option><option  value="15" hassubinfo="true">东华理工大学</option><option  value="20" hassubinfo="true">桂林电子科技大学信息科技学院</option><option  value="29" hassubinfo="true">广西理工职业技术学院</option><option  value="36" hassubinfo="true">陕西工业职业技术学院</option><option  value="37" hassubinfo="true">华东交通大学</option><option  value="43" hassubinfo="true">江西理工大学(南昌校区)</option><option  value="52" hassubinfo="true">青岛港湾职业技术学院</option><option  value="54" hassubinfo="true">华侨大学</option><option  value="57" hassubinfo="true">江西财经大学(蛟桥校区)</option><option  value="73" hassubinfo="true">四川传媒学院</option><option  value="76" hassubinfo="true">福建农林大学东方学院</option><option  value="79" hassubinfo="true">四川交通职业技术学院</option><option  value="93" hassubinfo="true">天津理工大学</option><option  value="100" hassubinfo="true">江西工程学院</option><option  value="102" hassubinfo="true">北京协和医学院</option><option  value="105" hassubinfo="true">宣城职业技术学院</option><option  value="120" hassubinfo="true">青海民族大学</option><option  value="128" hassubinfo="true">南华大学</option><option  value="139" hassubinfo="true">甘肃民族师范学院</option><option  value="283" hassubinfo="true">广东岭南职业技术学院</option><option  value="291" hassubinfo="true">成都理工大学工程技术学院</option><option  value="293" hassubinfo="true">山东药品食品职业学院</option><option  value="295" hassubinfo="true">西安文理学院</option><option  value="298" hassubinfo="true">中南大学</option>                            </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 control-label">类别：</label>
                <div class="col-sm-8 ">
                    <select id="type" name="type" data-placeholder="选择分类..." class="chosen-select" style="width:100%;" tabindex="2">
                        <option value="1">代步工具</option>
                        <option value="2">手机</option>
                        <option value="3">电脑</option>
                        <option value="4">数码</option>
                        <option value="5">电器</option>
                        <option value="6">衣鞋帽伞</option>
                        <option value="7">书籍教材</option>
                        <option value="8">体育健身</option>
                        <option value="9">乐器</option>
                        <option value="10">自行设计</option>
                        <option value="11">其他</option>
                    </select>
                </div>
            </div>
                <div class="form-group row ">
                    <label class="col-sm-3 control-label">联系方式：</label>
                    <div class="col-sm-8 ">
                        <select id="contact" name="type" data-placeholder="选择分类..." class="chosen-select" style="width:100%;" tabindex="2">
                            <option value="1">QQ</option>
                            <option value="2">微信</option>
                            <option value="3">手机号码</option>
                        </select>
                    </div>
                </div>
                <div class="ctrl">
                    <input type="text"  placeholder="请输入联系方式">
                </div>
            <div class="row  clearfix">
                <div class="span10 offset2">
                    <input type="submit" name="submit" id="submit" class="submit" value="发 &nbsp;&nbsp;&nbsp;&nbsp;布">
                </div>
            </div>
            </form>
        </div>
    </section>
</body>
</html>
