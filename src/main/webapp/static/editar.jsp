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
            <h1>Editar Produto</h1>
        </div>
        <div class="row justify-content-md-center">
            <div class="column">
                <div class="form-group">
                    <label for="product">Nome</label>
                    <input type="text" class="form-control" id="product">
                </div>
                <div class="form-group">
                    <label for="product">Preço</label>
                    <input type="float" class="form-control" id="price">
                </div>
                <div class="form-group">
                    <label for="product">Unidade</label>
                    <input type="text" class="form-control" id="unity">
                </div>
                <div class="form-group">
                    <label for="product">Quantidade</label>
                    <input type="number" class="form-control" id="qtd">
                </div>
            </div>
        </div>
        <div class="row justify-content-around">
            <a href="home" type="button" class="btn btn-sucess">Voltar ao Caixa</a>
            <a href="estoque" type="button" class="btn btn-sucess">Salvar</a>
        </div>
    </div>
</body>

</html>