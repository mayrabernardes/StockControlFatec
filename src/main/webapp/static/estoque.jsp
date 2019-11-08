<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "server.model.Produto" %>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./css/estoque.css">
    <script src="js/bootstrap.min.js"> </script>
    <link rel="stylesheet" href="js/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="row justify-content-center">
            <h1>Estoque</h1>
        </div>
        <div class="row justify-content-md-center">
            <div class="column">
                <div class="form-group">
                    <input type="text" class="form-control" id="product">
                </div>
            </div>
            <div class="column">
                <a href="estoque2" type="button" class="btn btn-sucess">Consultar</a>
                <a href="estoque" type="button" class="btn btn-sucess">Limpar Busca</a>
            </div>
        </div>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Preço un</th>
                    <th scope="col">Unidade</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Produto> product = (List<Produto>) request.getAttribute("product");
                    for ( Produto prod : product ){
                        out.print("<tr>");
                        out.print("<td>" + prod.getId() + "</td>");
                        out.print("<td>" + prod.getNome() + "</td>");
                        out.print("<td>" + prod.getMedida() + "</td>");
                        out.print("<td>" + prod.getQuantidade() + "</td>");
                        out.print("<td>" + String.format("%.2f", prod.getPreco()) + "</td>");
                        out.print("</tr>");
                    }
                %>
                <!-- <tr>
                    <th scope="row">Arroz</th>
                    <td>R$10</td>
                    <td>Kg</td>
                    <td>18</td>
                    <td><a href="editar" type="button" class="btn btn-sucess">Editar</a></td>
                </tr>
                <tr>
                    <th scope="row">Feijão</th>
                    <td>R$15</td>
                    <td>Kg</td>
                    <td>12</td>
                    <td><a href="editar" type="button" class="btn btn-sucess">Editar</a></td>

                </tr>
                <tr>
                    <th scope="row">Açucar</th>
                    <td>R$5</td>
                    <td>g</td>
                    <td>20</td>
                    <td><a href="editar" type="button" class="btn btn-sucess">Editar</a></td>
                </tr>
                <tr>
                    <th scope="row">Miojo</th>
                    <td>R$2</td>
                    <td>un</td>
                    <td>7</td>
                    <td><a href="editar" type="button" class="btn btn-sucess">Editar</a></td>
                </tr>
                <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td><b>TOTAL</b></td>
                    <td><b>57 Itens</b></td>
                </tr> -->
            </tbody>
        </table>
        <div class="row justify-content-around">
            <a href="cadastrar" type="button" class="btn btn-sucess">Adicionar Produto</a>
            <a href="home" type="button" class="btn btn-sucess">Voltar ao Caixa</a>
        </div>
    </div>
</body>

</html>