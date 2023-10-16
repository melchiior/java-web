<%-- 
    Document   : index
    Created on : 2 de out. de 2023, 15:45:17
    Author     : Prog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Atividade 2</title>
    </head>
    <body>
        <fildset>
            <legend>Formulario de coleta de dados</legend>
            <form method ="POST">
                <<label>
                    Qual o seu nome?
                    <input type="text" name="nome" /> 
                </label>
                <br>
                <label>
                    Qual sua data de nascimento?
                    <input type="date" name="dataNascimento"  />
                </label>
                <br>
                <p>
                    qual sua area preferida?
                    <label>
                        <input type="radio" name="areaPreferida" value="front"  />
                        
                        Fronted
                    </label>
                    
                    <label>
                        <input type="radio"name="areaPreferida"value="back" />
                        Backend
                    </label>
                    
                    <label>
                        <input type="radio" name="areaPreferida" value="fullstack"  />
                        Fullstack
                    </label>
                    
                    <label>
                        <input type="radio" name="areaPreferida" value ="devops" /> 
                        
                        Devops
                    </label>
                </p>
                <br>
                <button type = "submit">Enviar</button>
                </form>
        </fildset>
        <%
           if (request.getParameterMap().size() > 0) {
           out.println("<fieldset>");
           out.println("<legend>DAdos coletados do formulario</legend>");
           out.println("<p>Seu nome é " + request.getParameter("nome") + "</p>");
           out.println("<p>Sua data de aniversario é  " + request.getParameter("dataNascimento") +"</p>");
           out.println("<p> Sua area preferida é  " + request.getParameter("areaPreferida")+"</p>");
           out.println("</fieldset>");
            }
           %>   
    </body>
</html>
