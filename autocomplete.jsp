<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Combobox com Pesquisa</title>
    <meta charset="UTF-8"> <!-- Definir o conjunto de caracteres para UTF-8 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <form>
        <label for="autocomplete">Selecione ou digite algo:</label>
        <input type="text" id="autocomplete">
        <!-- Hidden input field to store the selected value -->
        <input type="hidden" name="selectedValue" id="selectedValue">
    </form>
    <script>
        $(document).ready(function () {
            const availableOptions = [
                "Maria da Silva",
                "João dos Santos",
                "Ana Oliveira",
                "Luiz Pereira",
                "Fernanda Almeida",
                "Pedro Souza",
                "Juliana Rodrigues",
                "André Carvalho",
                "Ana Clara Martins",
                "Rafael Ferreira",
                "Camila Barbosa",
                "Marcelo Gomes",
                "Laura Ribeiro",
                "Felipe Costa",
                "Isabel Fernandes",
                "Marcos Teixeira",
                "Carolina Cunha",
                "Eduardo Lima",
                "Beatriz Machado",
                "Daniel Barbosa",
                "Mariana Rocha",
                "José Alves",
                "Amanda Dias",
                "Thiago Santos",
                "Lívia Cardoso",
                "Lucas Mendes",
                "Gabriela Marques",
                "Gustavo Oliveira",
                "Bianca Alves",
                "Rodrigo Pereira"
            ];
            $("#autocomplete").autocomplete({
                source: function (request, response) {
                    var term = request.term.toLowerCase();
                    var matchedResults = [];

                    availableOptions.forEach(function (item) {
                        var itemName = item.toLowerCase();
                        if (itemName.includes(term)) {
                            matchedResults.push(item);
                        }
                    });

                    // Ordenar os resultados para que os que começam com o termo apareçam primeiro
                    matchedResults.sort(function(a, b) {
                        var indexA = a.toLowerCase().indexOf(term);
                        var indexB = b.toLowerCase().indexOf(term);
                        if (indexA < indexB) return -1;
                        if (indexA > indexB) return 1;
                        return 0;
                    });

                    response(matchedResults);
                },
                select: function (event, ui) {
                    $("#selectedValue").val(ui.item.value);
                }
            });
        });
    </script>
</body>
</html>
