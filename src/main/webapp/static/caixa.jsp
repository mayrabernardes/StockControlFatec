<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model.Product" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Carrinho</title>
    <link rel="stylesheet" href="styles/index.css">
</head>

<body>
    <div class="header">
        <h2 class="txt-header">Caixa</h2>
    </div>
    <center>
        <form action="caixa" method="POST" class="search">
            <input type="text" name="value" placeholder="Buscar um produto..." class="search-input" /><br>
            <button class="search-btn">
                <label for="">Buscar</label>
            </button>
        </form>
        <form action="caixa" method="GET">
            <table class="table">
                <tr class="header-table">
                    <th align="center" class="txt-black" width=10%>Código</th>
                    <th align="center" class="txt-black" width=10%>Nome</th>
                    <th align="center" class="txt-black" width=10%>Descrição</th>
                    <th align="center" class="txt-black" width=10%>Preço</th>
                    <th align="center" class="txt-black" width=10%>Quantidade</th>
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
        <br>
        <br>
        <br>
    </center>
    <div class="options">
        <div class="btn_option">
            <a href="cadastro" class="txt-black">Cadastrar Produtos</a>
        </div>
        <div class="btn_option">
            <a href="estoque" class="txt-black">Estoque</a>
        </div>
    </div>

</body>

</html>