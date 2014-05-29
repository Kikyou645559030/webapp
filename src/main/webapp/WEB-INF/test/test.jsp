<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<html>
<head>
    <title></title>
    <link href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="row-fluid">
        <div class="span12">
            <table class="table table-striped table-bordered table-hover">
                <tr class="">
                    <td>表头1</td>
                    <td>表头2</td>
                    <td>表头3</td>
                    <td>表头4</td>
                    <td>表头5</td>
                    <td>表头6</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
