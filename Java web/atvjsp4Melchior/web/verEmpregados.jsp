<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sql:setDataSource
        driver="${pageContext.servletContext.getInitParameter('DriverJDBC')}"
        url="${pageContext.servletContext.getInitParameter('urlJDBC')}"
        user="${pageContext.servletContext.getInitParameter('usernameDB')}"
        password="${pageContext.servletContext.getInitParameter('passwordDB')}"
        scope="request"
        var="conexaoComBanco" />

<sql:query dataSource="${conexaoComBanco}" var="empregados" maxRows="5000">
    SELECT * FROM empregados
</sql:query>

<table style="width: 100%" border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th
            <th>Sobrenome</th>
            <th>Idade</th>
            <th>Opções</th>
        </tr>
        </thead>
        
        
            <c:forEach items="${empregados.rows}" var="e">
                <<tr>
                    <td> <c:out value="${e.id}" /></td>
                    <td><c:out value="${e.nome}" /></td> 
                    <td><c:out value="${e.sobrenome}" /></td>]
                    <td> <c:out value="${e.idade}" /></td> 
                    <td>
                        <form method ='POST' action='formularioEdita.jsp'
                              style='display: inline-block'>
                            
                            <input type="HIDDEN" value="${e.id}" name="id"  />
                            <button type="submit">Editar</button>
                        </form>
                        <form method="POST" action="apagarEmpregados.jsp" 
                              style="display: inline-block">
                            
                            <input type="HIDDEN" value="${e.id}" name="id" />
                            <button type="dubmit">Apagar</button>
                        </form>
                    </td>
                </tr>
         </c:forEach> 
    </tbody>
</table>