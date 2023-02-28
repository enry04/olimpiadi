<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT tFase.nomeFase, MAX(tClassifica.punteggio) AS punteggio_massimo, tpartecipante.nome, tpartecipante.cognome, tpartecipante.dataNascita FROM tFase INNER JOIN tGara ON tFase.id = tGara.idFase INNER JOIN tClassifica ON tGara.id = tClassifica.idGara INNER JOIN tpartecipante ON tclassifica.idPartecipante = tpartecipante.id GROUP BY tFase.nomeFase");
$recordsData = $query->fetchAll();
$result = null;
if($recordsData != null){
    $result = array(
        "data" => json_encode($recordsData),
        "status" => "success",
    );
}else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);