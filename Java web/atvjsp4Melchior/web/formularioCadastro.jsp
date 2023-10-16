<%-- 
    Document   : formularioCadastro
    Created on : 4 de out. de 2023, 16:01:21
    Author     : Prog
--%>
<form method="POST" action="cadastrarEmpregado.jsp">
    
    <label>
        ID (não pode ser um já existente) : <br>
        <input type="number" name="id" />
    </label>
    <br>
    
    <label>
        Nome: <br>
        <input type="text" name="nome"/>
    </label>
    <br>
    
    <label>
        Sobrenome: <br>
        <input type="text" name="sobrenome" />
    </label>
    <br>
    
    <label>
        Idade: <br>
        <input type="number" name="idade"/>
    </label>
    <button type="submit">Cadastrar</button>
</form>