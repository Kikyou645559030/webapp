<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<%@taglib uri="http://www.webapp.com.version" prefix="version" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户信息列表</title>
    <script src="${ctx}/static/plugins/jquery/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/project/js/ajaxfileupload.js"></script>
    <link href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<table width="100%" cellpadding="10" cellspacing="10" bgcolor="#c0c0c0"
       class="table table-striped table-bordered table-hover">
    <tr>
        <td width="30%">ID</td>
        <td width="30%">用户名称</td>
        <td>用户密码</td>
    </tr>
    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
        </tr>
    </c:forEach>
</table>
<version:versionIds versionIds="1,2,1"></version:versionIds>
</body>
</html>