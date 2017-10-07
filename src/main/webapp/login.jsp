<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 10/6/17
  Time: 4:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>alert(document.cookie)</script>
</head>

<body>
<%
    String userId = null;
    Cookie[] cookies = request.getCookies();
    if(cookies != null)
    {
        for(Cookie cookie : cookies)
        {
            if(cookie.getName().equals("_rxuuid"))
            {
                userId = cookie.getValue();
            }
        }
    }
    if(userId==null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<h3>_rxuuid : <%=userId%></h3>

<form method="post" action="index.jsp" name="logout">
    <input type="submit" value="logout" name="logout"/>
</form>
</body>
</html>
