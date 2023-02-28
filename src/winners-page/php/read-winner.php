<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT tPartecipante.nome, tPartecipante.cognome, tSquadra.nomeSquadra, tGara.nomeGara, tClassifica.punteggio, tpartecipante.dataNascita, tIstituto.nomeIstituto, tNazionalita.nomeNazionalita
FROM tClassifica
INNER JOIN tPartecipante ON tClassifica.idPartecipante = tPartecipante.id
INNER JOIN tSquadra ON tPartecipante.idSquadra = tSquadra.id
INNER JOIN tGara ON tClassifica.idGara = tGara.id
INNER JOIN tFase ON tGara.idFase = tFase.id
INNER JOIN tIstituto ON tPartecipante.idIstituto = tIstituto.id
INNER JOIN tRegione ON tIstituto.idRegione = tRegione.id
INNER JOIN tNazionalita ON tRegione.idNazionalita = tNazionalita.id
WHERE tFase.nomeFase = 'internazionale'
ORDER BY tClassifica.punteggio DESC, tPartecipante.dataNascita ASC LIMIT 1");

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
