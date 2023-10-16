<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource
                driver="${pageContext.servletContext.getInitParameter('DriverJDBC')}"
                url="${pageContext.servletContext.getInitParameter('urlJDBC')}"
                user="${pageContext.servletContext.getInitParameter('usernameDB')}"
                password="${pageContext.servletContext.getInitParameter('passwordDB')}"
                scope="request"
                var="conexaoComBanco" />
        
        <sql:update dataSource="${conexaoComBanco}" var="queryResponse">
            DELETE FROM empregados WHERE id=?
            <sql:param value="${pageContext.request.getParameter('id')}" />
        </sql:update>
            <script>
            alert("apagado com sucesso!");
            location.href = "index.jsp";
            </script>
    </body>
</html>
