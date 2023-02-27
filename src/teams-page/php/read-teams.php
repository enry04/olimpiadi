<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT tSquadra.nomeSquadra, COUNT(tPartecipante.id) AS numPartecipanti, AVG(DATEDIFF(CURDATE(), tPartecipante.dataNascita)/365) AS etaMedia
FROM tPartecipante
INNER JOIN tSquadra ON tPartecipante.idSquadra = tSquadra.id
WHERE tPartecipante.idSquadra IS NOT NULL
GROUP BY tSquadra.id
ORDER BY numPartecipanti DESC");

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
