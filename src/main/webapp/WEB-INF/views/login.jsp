<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${ctx}/static/project/css/lanrenzhijia.css" />
<script src="${ctx}/static/project/js/jquery.min.js" type="text/javascript" language="JavaScript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#submit").click(function(){
			var username = $("#username").val();
			var password = $("#password").val();
			if(username==""||password==""){
				$("#info").html("你必须先登录！");
				return false;
			}
		});
	});
</script>
<style type="text/css">
    a:link {
        text-decoration: none;
        color: blue;
    }
    a:active {
        text-decoration: blink;
    }
    a:hover {
        text-decoration: underline;
        color: red;
    }
    a:visited {
        text-decoration: underline;
        color: green
    }
    .out{
        width:30%;
        float: left;
        height: 187px;
        background:gray;
    }
    .title{
        width: 100%;
        height: 40px;
        color: saddlebrown;
        line-height:40px;
        font-weight: bold;
        font-size: 18px;
        padding-left: 10px;
    }
    .lable{
    	line-height:30px;
    	padding-right: 16px;
    	padding-left: 30px;
    	float:left;
    	width:70px;
    	font-size:15px;
    	color:black;
    }
</style>
<title>用户登录</title>
</head>
<body style="background-image:url('${ctx}/static/project/image/bg.jpg');">
    <div class="out" style="margin-left:9%;margin-top: 15%">
        <form name="loginform" action="${ctx}/userInfo/login" method="post">
            <div class="inner">
                <div class="title">用户登录</div>
                <hr>
                <div style="height: 40px">
                    <label class="lable">用户名</label>
                    <input style="border-radius:7px;width:185px;height:27px;" id="username" name="username"/>
                </div>
                <div style="height: 40px">
                    <label class="lable">用户密码</label>
                    <input style="border-radius:7px;width:185px;height:27px;" type="text" name="password" id="password"/>
                </div>
                <div>
                    <span id="info" style="color: #ff0000"></span>
                </div>
                <div style="text-align: center">
                    <input class="btn btn-primary" type="submit" id="submit" name="submit" value=" 登 录 " />
                    &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color:black;">【用户注册】</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>