<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT tGara.id, tGara.nomeGara, AVG(tClassifica.punteggio) AS punteggioMedio FROM tGara INNER JOIN tFase ON tGara.idFase = tFase.id INNER JOIN tClassifica ON tGara.id = tClassifica.idGara WHERE tFase.nomeFase = 'scolastica' GROUP BY tGara.id, tGara.nomeGara");
$scoresData = $query->fetchAll();
$result = null;
if($scoresData != null){
    $result = array(
        "data" => json_encode($scoresData),
        "status" => "success",
    );
}else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);