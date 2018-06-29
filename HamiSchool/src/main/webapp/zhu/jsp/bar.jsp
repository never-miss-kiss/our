<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="HandheldFriendly" content="True">

    <title>Simpler-Sidebar: Demo</title>
    <meta name="description" content="A simple side nav in jQuery.">

    <%--<link rel="stylesheet" href="<%= basePath %>zhu/assets/css/normalize.css" />--%>
    <link rel="stylesheet" href="<%= basePath %>zhu/assets/css/main.css" />
    <script src="<%= basePath %>zhu/assets/js/html5shiv.min.js"></script>
    <![endif]-->
  </head>

  <body>
  <div class="navbar main" id="navbar-main">
    <div class="load-this">
      <div id="sidebar-main-trigger" class="icon float-left">
        <img src="<%= basePath %>zhu/assets/imgs/icon-menu-24px-x2.png" width="24px" alt="Menu Icon" />
      </div>
    </div><!--a ajax helper-->
  </div><!--.navbar.main-->



        <%--<div id="sidebar-main-trigger" class="icon float-left">--%>
          <%--<img src="<%= basePath %>zhu/assets/imgs/icon-menu-24px-x2.png" width="24px" alt="Menu Icon" />--%>
        <%--</div>--%>


    <div class="sidebar main left" id="sidebar-main">
      <div class="wrapper">
        <nav>
          <ul>
            <li class="title">Playground</li>
            <li><a href="./index.html">Home</a></li>
            <li><a href="./right.html">Right</a></li>
            <li><a href="./right-top.html">Right Top</a></li>
            <li><a href="./left.html">Left</a></li>
            <li><a href="./left-top.html">Left Top</a></li>
            <li><a href="./jquery-v2.html">jQuery v2</a></li>
            <li><a href="./jquery-v3.html">jQuery v3</a></li>
            <li><a href="./right-left.html">Right and Left</a></li>
            <li><a href="./init-opened.html">Init Opened</a></li>
            <li><a href="./no-mask.html">No Mask</a></li>
            <li><a href="./allow-scrolling.html">Allow Scrolling</a></li>
            <li><a href="./custom-functions.html">Custom Functions</a></li>
            <li><a href="./ajax.html">Ajax</a></li>
            <li><a href="./browserify.html">Browserify</a></li>
          </ul>
        </nav>
    </div><!--#sidebar-main-->

    <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.11.2.js"></script>
    <script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script>
    <script src="<%= basePath %>zhu/dist/jquery.simpler-sidebar.min.js"></script>
    <script src="<%= basePath %>zhu/assets/js/sidebar/main-sidebar-left-top.js"></script>
  </body>
</html>
