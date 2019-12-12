<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model.Product" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Estoque</title>
    <link rel="stylesheet" href="styles/index.css">
</head>

<body>
    <div class="container">
        <div class="header">
            <h2 class="txt-header">Estoque</h2>
        </div>

        <center>
            <form action="estoque" method="GET" class="search">
                <input type="text" name="value" placeholder="Buscar um produto..." class="search-input" /><br>
                <button class="search-btn">
                    <label for="">Buscar</label>
                </button>
            </form>
            <form action="estoque" method="POST">
                <table class="table">
                    <tr class="header-table">
                        <th class="txt-black" width=10%>Código</th>
                        <th class="txt-black" width=10%>Nome</th>
                        <th class="txt-black" width=10%>Descrição</th>
                        <th class="txt-black" width=10%>Preço (R$)</th>
                        <th class="txt-black" width=10%>Quantidade</th>
                    </tr>
                    <%
                        List<Product> products = (List<Product>) request.getAttribute("products");
                        for (Product prod : products) {
                            out.print("<tr align='center' height='30'>");
                            out.print("<td class='produtos' align='center'> <span class='txt-black-small'>" + prod.getCode() + "</span> </td>");
                            out.print("<td class='produtos' align='center'> <span class='txt-black-small'>" + prod.getName() + "</span> </td>");
                            out.print("<td class='produtos' align='center'> <span class='txt-black-small'>" + prod.getDescription() + "</span> </td>");
                            out.print("<td class='produtos' align='center'> <span class='txt-black-small'>" + prod.getPrice() + "</span> </td>");
                            out.print("<td class='produtos' align='center'> <span class='txt-black-small'>" + prod.getAmount() + "</span> </td>");
                            out.print("</tr>");
                        }
                    %>
                </table>
            </form>
            <br><br>
            <form action="estoque" method="POST">
                <div align="center">
                    <span class='txt-black'>Alterar produto</span>
                </div>
                <div align="center">
                    
                    <div class="event">
                        <div>
                            <input class="search-input-small" type='text' name='code'
                                placeholder="Digite o código do produto..." />
                        </div>
                        <div class="select-style">
                            <select name="options" aria-placeholder="Selecione a ação...">
                                <option class="txt-black" value="editar">Editar</option>
                                <option class="txt-black" value="excluir">Excluir</option>
                            </select>
                        </div>
                        <div align="center">
                            <input class="btn_execute" type="submit" value="Executar" />
                        </div>
                    </div>
                </div>
            </form>
        </center>
        <div class="options">
            <div class="btn_option">
                <a href="cadastro" class="txt">Cadastrar Produtos</a>
            </div>
            <div class="btn_option">
                <a href="caixa" class="txt">Caixa</a>
            </div>
        </div>
    </div>
</body>

</html>