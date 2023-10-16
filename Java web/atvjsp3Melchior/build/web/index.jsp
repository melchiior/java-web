<%-- 
    Document   : index
    Created on : 2 de out. de 2023, 16:12:54
    Author     : Prog
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Atividade 3</title>
    </head>
    <body>
        <%
            List<String> nomes = new LinkedList<>();
            nomes.addAll(Arrays.asList("João", "Maria", "Carlos", "Joana"));
            Date dataHoje = new Date(System.currentTimeMillis());
            request.setAttribute("nomesDasPessoas", nomes);
            request.setAttribute("horarioServidor", dataHoje);
        %>
        <h1>Entendendo a biblioteca JSTL!</h1>
        <ul>
            <c:forEach var="item" items="${nomesDasPessoas}">
                <! interando itens da lista usando JSTL>
                <li> <c:out value="${item}" /> </li>
                </c:forEach>
            </ul>
                <c:set scope="session" value="${2000*3}" var="num" />
                <c:if test="${num > 1000}">
                    <p>Vejo que este número é maior que 1000.</p>
                    </c:if>
    </body>
</html>
