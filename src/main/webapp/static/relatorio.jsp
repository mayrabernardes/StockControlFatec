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
            <h1>Relatório de Compra</h1>
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
                    <td>1</td>
                </tr>
                    <th scope="row"></th>
                    <td></td>
                    <td><b>TOTAL</b></td>
                    <td><b>R$5,00</b></td>
                </tr>
            </tbody>
        </table>
        <div class="row justify-content-around">
            <a href="caixa" type="button" class="btn btn-sucess">Cancelar</a>
            <a href="final" type="button" class="btn btn-sucess">Finalizar</a>
        </div>
    </div>
</body>

</html>