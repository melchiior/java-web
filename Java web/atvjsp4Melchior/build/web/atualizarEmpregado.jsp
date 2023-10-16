<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="pt-br">
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
            UPDATE empregados SET nome = ?, sobrenome = ?, idade = ? WHERE id = ?
            <sql:param value="${pageContext.request.getParameter('nome')}" />
            <sql:param value="${pageContext.request.getParameter('sobrenome')}" />
            <sql:param value="${pageContext.request.getParameter('Idade')}" />
            <sql:param value="${pageContext.request.getParameter('id')}" />
        </sql:update>
            
        <script>
            alert("Atualizado com sucesso!");
            location.href="index.jsp";
        </script>
    </body>
</html>