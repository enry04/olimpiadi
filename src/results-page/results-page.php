<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../common/css/page-style.css">
    <link rel="stylesheet" href="../common/css/header-style.css">
    <link rel="stylesheet" href="../common/css/table-style.css">
    <link rel="stylesheet" href="./css/results-page-style.css">
    <title>Olimpiadi</title>
</head>

<body>
    <?php
    require_once("../common/php/header.php");
    ?>
    <main>
        <div class="form-container">
            <input type="text" class="name-text" placeholder="Nome atleta" required>
            <input type="text" class="surname-text" placeholder="Cognome atleta" required>
            <input type="button" value="Cerca" class="submit-btn">
        </div>
        <section>
            <h3 class="error-text hide">Nessun atleta trovato</h3>
            <h3 class="title-text hide">Le gare disputate dall' atleta</h3>
            <table class="hide">

            </table>
        </section>
    </main>
    <script src="./js/results-view.js" type="module"></script>
</body>

</html>