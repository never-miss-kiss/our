<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- release v4.1.8, copyright 2014 - 2015 Kartik Visweswaran -->
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>Krajee JQuery Plugins - &copy; Kartik</title>

        <link href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%= basePath %>zhu/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
        <script src="<%= basePath %>zhu/js/fileinput.js" type="text/javascript"></script>
        <script src="<%= basePath %>zhu/js/fileinput_locale_zh.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container kv-main">
            <form enctype="multipart/form-data">
                <input id="file-0" class="file" type="file" multiple data-min-file-count="1">
                <br>
            </form>
            <br>
        </div>


    </body>
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
</html>