<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
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
            <h1>Caixa</h1>
        </div>
        <div class="row justify-content-md-center">
            <div class="column">
                <div class="form-group">
                    <input type="text" class="form-control" id="product">
                </div>
            </div>
            <div class="column">
                <a href="caixa" type="button" class="btn btn-sucess">Adicionar</a>
            </div>
        </div>
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">Preço un</th>
                    <th scope="col">Unidade</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col">Valor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Açucar</th>
                    <td>R$5</td>
                    <td>g</td>
                    <td contenteditable="true">1</td>
                    <td contenteditable="true">R$5</td>
                </tr>
            </tbody>

        </table>
        <div class="row justify-content-around">
            <a href="estoque" type="button" class="btn btn-sucess">Estoque</a>
            <a href="relatorio" type="button" class="btn btn-sucess">Finalizar Compra</a>
        </div>
    </div>
</body>

</html>