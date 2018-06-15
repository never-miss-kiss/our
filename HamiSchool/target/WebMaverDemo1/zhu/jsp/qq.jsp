<!DOCTYPE html>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="favicon.png">
    <title>emoji-picker Demo</title>

    <link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%= basePath %>zhu/css/font-awesome.min.css">

    <!-- Begin emoji-picker Stylesheets -->
    <link href="<%= basePath %>zhu/lib/css/emoji.css" rel="stylesheet">
    <!-- End emoji-picker Stylesheets -->
  </head>

  <body class="text-center">
    <h1>emoji-picker</h1>
    <p>
      <a class="btn btn-secondary" href="https://github.com/one-signal/emoji-picker" target="_blank">
        View on GitHub <i class="fa fa-lg fa-github"></i>
      </a>
    </p>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-6">
          <div class="text-left">
            <p class="lead emoji-picker-container">
              <input type="email" class="form-control" placeholder="Input field" data-emojiable="true">
            </p>
            <%--<p class="lead emoji-picker-container">--%>
              <%--<input type="email" class="form-control" placeholder="Input with max length of 10" data-emojiable="true" maxlength="10">--%>
            <%--</p>--%>
            <%--<p class="lead emoji-picker-container">--%>
              <%--<textarea class="form-control textarea-control" rows="3" placeholder="Textarea with emoji image input" data-emojiable="true"></textarea>--%>
            <%--</p>--%>
            <%--<p class="lead emoji-picker-container">--%>
              <%--<textarea class="form-control textarea-control" rows="3" placeholder="Textarea with emoji Unicode input" data-emojiable="true" data-emoji-input="unicode"></textarea>--%>
            <%--</p>--%>
          </div>
        </div>
      </div>
    </div>

    <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.12.1.min.js"></script>

    <!-- Begin emoji-picker JavaScript -->
    <script src="<%= basePath %>zhu/lib/js/config.js"></script>
    <script src="<%= basePath %>zhu/lib/js/util.js"></script>
    <script src="<%= basePath %>zhu/lib/js/jquery.emojiarea.js"></script>
    <script src="<%= basePath %>zhu/lib/js/emoji-picker.js"></script>
    <!-- End emoji-picker JavaScript -->

    <script>
      $(function() {
        // Initializes and creates emoji set from sprite sheet
        window.emojiPicker = new EmojiPicker({
          emojiable_selector: '[data-emojiable=true]',
          assetsPath: '../lib/img/',
          popupButtonClasses: 'fa fa-smile-o'
        });
        // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
        // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
        // It can be called as many times as necessary; previously converted input fields will not be converted again
        window.emojiPicker.discover();
      });
    </script>
    <script>
      // Google Analytics
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-49610253-3', 'auto');
      ga('send', 'pageview');
    </script>
  </body>
</html>
