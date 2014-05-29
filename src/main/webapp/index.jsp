<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
    <%
        HttpSession session1 = request.getSession();
        String username = (String)session1.getAttribute("username");
        if(!"".equals(username) && username != null){
            request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response);
        }
    %>
</body>
</html>