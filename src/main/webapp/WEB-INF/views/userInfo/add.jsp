<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath%>static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/core/css/style-metro.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/core/css/style.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/core/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="<%=basePath%>static/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
#commentForm label {
	margin-left: 10px;
	margin-right: 15px;
	width: 122px;
	color: #000000;
}

	.uneditable-input,
	textarea.m-wrap,
	input.m-wrap[type="text"],
	input.m-wrap[type="password"],
	input.m-wrap[type="datetime"],
	input.m-wrap[type="datetime-local"],
	input.m-wrap[type="date"],
	input.m-wrap[type="month"],
	input.m-wrap[type="time"],
	input.m-wrap[type="week"],
	input.m-wrap[type="number"],
	input.m-wrap[type="email"],
	input.m-wrap[type="url"],
	input.m-wrap[type="search"],
	input.m-wrap[type="tel"],
	input.m-wrap[type="color"]{
		width: 400px;
	}
</style>
<script type="text/javascript" src="<%=basePath%>static/project/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/project/js/validate/jquery.validate.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#commentForm").validate();
		
	});
</script>
<title>用户添加</title>
</head>
<body>
	<div class="row-fluid">
	    <div class="span12">
	        <div class="portlet box blue">
	            <div class="portlet-title">
	                <div class="caption"><i class="fa fa-reorder"></i>用户注册</div>
	            </div>
	            <div class="portlet-body form">
	                <form action="#" class="form-horizontal" id="commentForm">
	                    <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">用户名</label>
	                        <div class="controls">
	                            <input type="text" class="span6 m-wrap" id="inputWarning" name="username"/>
	                            <span class="input-success tooltips" data-original-title="Success input!" id="usernameTip">
								 </span>
	                        </div>
	                    </div>
	                    <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">用户密码</label>
	                        <div class="controls">
	                            <input type="password" name="password" class="span6 m-wrap" id="inputError" />
	                            <span class="input-success tooltips" data-original-title="Success input!" id="password1Tip">
								 </span>
	                        </div>
	                    </div>
	                     <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">确认密码</label>
	                        <div class="controls input-icon">
	                            <input type="text" class="span6 m-wrap" name="password"/>
	                            <span class="input-success tooltips" data-original-title="Success input!" id="password2Tip">
								 </span>
	                        </div>
	                    </div>
	                    <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">家庭住址</label>
	                        <div class="controls input-icon">
	                             <input type="text" class="span6 m-wrap" name="address"/>
	                             <span class="input-success tooltips" data-original-title="Success input!" id="addressTip">
								 </span>
	                        </div>
	                    </div>
	                    <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">电话号码</label>
	                        <div class="controls input-icon">
	                            <input type="text" class="span6 m-wrap" name="phone"/>
	                            <span class="input-success tooltips" data-original-title="Success input!" id="phoneTip">
								</span>
	                        </div>
	                    </div>
	                    <div class="control-group warning">
	                        <label class="control-label" for="inputSuccess">QQ号码</label>
	                        <div class="controls input-icon">
	                            <input type="text" class="span6 m-wrap" />
								<span class="input-success tooltips" data-original-title="Success input!" id="qqTip">
								</span>
	                        </div>
	                    </div>
	                    <div class="form-actions">
	                        <button type="submit" class="btn blue">Save</button>
	                        <button type="reset" class="btn">Cancel</button>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>