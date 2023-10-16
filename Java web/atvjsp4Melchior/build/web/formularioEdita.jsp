<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<sql:setDataSource
 driver="${pageContext.servletContext.getInitParameter('DriverJDBC')}"
 url="${pageContext.servletContext.getInitParameter('urlJDBC')}"
 user="${pageContext.servletContext.getInitParameter('usernameDB')}"
 password="${pageContext.servletContext.getInitParameter('passwordDB')}"
 scope="request"
 var="conexaoComBanco" />

<sql:query dataSource="${conexaoComBanco}" maxRows="1" var="queryResponse">
    SELECT id, nome, sobrenome, idade FROM empregados WHERE id = ?
    <sql:param value="${pageContext.request.getParameter('id')}" />
</sql:query>
    
    <!DOCTYPE html>
    <html>
        <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>JSP Page</title>
        </head>
        <body>
            <c:forEach items="${queryResponse.rows}" var="empregados">
                <form method="POST" action="atualizarEmpregado.jsp" />
                    <label>
                         ID: <br>
                        <input type="number"
                           name="id"
                           value="${empregados.id}" readonly/>
                    <br>
                    nunca altere a chave primaria 
                    deve ser a identidade unica do registro
                    <br>
                </label>
                <label>
                    nome: <br>
                    <input type="text"
                           name="nome"
                           value="${empregados.nome}" />
                    <br>
                </label>
                    
                <label>
                    Sobrenome: <br>
                    <input type="text"
                           name="sobrenome"
                           value="${empregados.sobrenome}" />
                    <br>
                </label>
                <label>
                    Idade: <br>
                    <input type="number"
                           name="idade"
                           value="${empregados.idade}" />
               </labe>
             <button type="submit">Atualizar</button>
                 &nbsp;
            <a href="index.jsp">Voltar</a>
        </form>
    </c:forEach>
 </body>
</html>