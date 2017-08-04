<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/webuploader.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/diyUpload.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/res/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/diyUpload.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/upload.do" method="post" enctype="multipart/form-data">
		选择图片:
		<input type="file" name="file">
		<br />
		<input type="submit" value="上传">
	</form>

	<div id="demo" style="padding-left: 50px; width: 100%">
		<div id="as"></div>
	</div>

	<script type="text/javascript">
		function initWebuploader() {
			/* init webuploader */
			$('#as').diyUpload({
				url : '/upload.do',
				success : function(data) {
					if (data.status == 'ok') {
						var imgUrl = data.imgUrl;
						imgUrls += (imgUrl + ",");
						$("#urlsStr").val(imgUrls);
					}
				},
				error : function(err) {
					console.info(err);
				},
				buttonText : '重新上传布设图片',
				chunked : false,
				// 分片大小
				chunkSize : 512 * 1024,
				// 最大上传的文件数量, 总文件大小,单个文件大小(单位字节);
				fileNumLimit : 50,
				fileSizeLimit : 500000 * 1024,
				fileSingleSizeLimit : 50000 * 1024,
				accept : {
					title : 'Images',
					extensions : 'gif,jpg,jpeg,bmp,png',
					mimeTypes : 'image/jpg,image/jpeg,image/png'
				}
			});
		}
		initWebuploader();
	</script>
</body>
</html>