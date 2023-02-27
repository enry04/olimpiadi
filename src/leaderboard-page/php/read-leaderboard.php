<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT c.idPartecipante, c.idGara, p.nome, p.cognome, p.dataNascita, c.punteggio, g.nomeGara
FROM tClassifica c
INNER JOIN tPartecipante p ON c.idPartecipante = p.id
INNER JOIN tgara g ON c.idGara = g.id
WHERE c.idGara IN (
    SELECT idGara FROM tGara WHERE data < CURDATE()
)
AND (
    SELECT COUNT(*) FROM tClassifica c2
    WHERE c2.idGara = c.idGara AND c2.punteggio > c.punteggio
) < 5
ORDER BY c.idGara, c.punteggio DESC, p.dataNascita ASC");

$leaderboardData = $query->fetchAll();
$result = null;
if ($leaderboardData != null) {
    $result = array(
        "data" => json_encode($leaderboardData),
        "status" => "success",
    );
} else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);
