<%-- 
    Document   : index
    Created on : 2 de out. de 2023, 16:52:44
    Author     : Prog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Atividade 4</title>
    </head>
    <body>
        <h2>CRUD com MySQL e JSP</h2>
        <fieldset>
            <legend>LIstando os Empregados</legend>
            <%@include file="verEmpregados.jsp" %>
        </fieldset>
        <fieldset>
            <legend>Cadastrar um Novo Empregado</legend>
            <%@include file="formularioCadastro.jsp" %>
            </fieldset>
    </body>
</html>
