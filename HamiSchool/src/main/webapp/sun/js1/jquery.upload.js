/**
 * jQuery upload v1.2
 * http://www.ponxu.com
 *
 * @author xwz
 */

(function($) {
	var noop = function(){ return true; };
	var frameCount = 0;
	$.uploadDefault = {
		url: '',
		fileName: 'filedata',
		dataType: 'json',
		params: {},
		onSend: noop,
		onSubmit: noop,
		onComplate: noop
	};
	$.upload = function(options) {
		$('.uploadmgiframe').remove();
		$('.uploadmgiframe').next().remove();
		var opts = $.extend(jQuery.uploadDefault, options);
		if (opts.url == '') {
			return;
		}
		
		var canSend = opts.onSend();
		if (!canSend) {
			return;
		}
		
		var frameName = 'upload_frame_' + (frameCount++);
		var iframe = $('<iframe style="position:absolute;top:-9999px" class="uploadmgiframe"/>').attr('name', frameName);
		var form = $('<form method="post" style="display:none;" enctype="multipart/form-data" />').attr('name', 'form_' + frameName);
		form.attr("target", frameName).attr('action', opts.url);
		var formHtml ='';
		//form中增加数据域
		formHtml = '<input type="file" data-value="img" name="' + opts.fileName + '" onchange="onChooseFile(this)">';
                                                                                                                                            
		form.append(formHtml);
		iframe.appendTo("body");
		form.appendTo("body");
				

		// iframe 在提交完成之后
		iframe.load(function() {
			var contents = $(this).contents().get(0);
			var data = $(contents).find('body').text();
			if ('json' == opts.dataType) {
				data = window.eval('(' + data + ')');
			}
			opts.success(data);
		});

		// 文件框
		$.upload.fileInput = $('input[type=file][name=' + opts.fileName + ']', form);
		if(opts.flag!=0){
			$.upload.fileInput.click();
		}
		$.upload.form = $('form');
	};
})(jQuery);
var notiefun=function(msg) {
    var s1 = "<div class='modal_full in'><div class='modal-backdrop'></div><div class='modal'><span class='close'></span><h3>" + langgobale[150].string + "</h3><div>";
    var s2 = "</div></div></div>";
    $('body').append(s1 + msg + s2);
    $('.modal_full').fadeIn('normal', function() {
        setTimeout(function() {
            $(".modal_full").fadeOut('fast', function() {
                $(this).remove();
            });
        }, 1000);
    });
}
// 选中文件, 提交表单(开始上传)
var onChooseFile = function(fileInputDOM) {
     var div = $('#preview');  
     div.html('<img id=imghead>');  
     var img = document.getElementById('imghead');  
     var files = fileInputDOM.files;
    if (fileInputDOM.files)  
    {  
    	file = files[0];
        
        var reader = new FileReader();  

        reader.onload = function(evt){
        	var reg = /image\/jpeg|image\/jpg|image\/png|image\/gif|image\/JPEG|image\/GIF|image\/PNG|image\/JPG/i; 
        	var path=evt.target.result;
        	if(!reg.test(path)){
        		notiefun('您选择的图片格式不正确');
        	}
        	img.src = path;
        }  
        reader.readAsDataURL(file);  
    }else{
    	notiefun('请换个浏览器试试吧～');
    	//IE下，使用滤镜
    	// var sender=document.getElementById('activity_img');
  //   	sender.select();  
		// sender.blur();  
		// var imgSrc = document.selection.createRange().text;    
	 //   objPreviewFake.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = imgSrc;  
	 //   objPreviewSizeFake.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = imgSrc; 
	 //   autoSizePreview( objPreviewFake,objPreviewSizeFake.offsetWidth, objPreviewSizeFake.offsetHeight );  
	 //   objPreview.style.display = 'none'; 
	    // sender.select();
     //    var reallocalpath = document.selection.createRange().text;
     //    var ie6 = /msie 6/i.test(navigator.userAgent);
     //    // IE6浏览器设置img的src为本地路径可以直接显示图片
     //    if (ie6) pic.src = reallocalpath;
     //    else {
     //        // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
     //       img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
     //        // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
     //        img.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';
     //        img.style.display = 'block';
     //    } 
    }
	
	//form.submit();
};

