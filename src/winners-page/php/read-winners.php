<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT ts.nomeSquadra, SUM(tc.punteggio) as totale_punteggio
FROM tPartecipante tp
JOIN tSquadra ts ON tp.idSquadra = ts.id
JOIN tClassifica tc ON tp.id = tc.idPartecipante
JOIN tGara tg ON tc.idGara = tg.id
JOIN tFase tf ON tg.idFase = tf.id
WHERE tf.nomeFase = 'internazionale'
GROUP BY ts.nomeSquadra
ORDER BY totale_punteggio DESC
LIMIT 1;");

$calendarData = $query->fetchAll();
$result = null;
if ($calendarData != null) {
    $result = array(
        "data" => json_encode($calendarData),
        "status" => "success",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);
