<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$json = file_get_contents("php://input");
$data = json_decode($json);

$name = $data->name;
$surname = $data->surname;

$query = $pdo->prepare("SELECT g.id, g.nomeGara, g.data, c.punteggio
FROM tGara g
JOIN tClassifica c ON g.id = c.idGara
JOIN tPartecipante p ON c.idPartecipante = p.id
WHERE p.nome = :name AND p.cognome = :surname");
$query->execute(['name' => $name, 'surname' => $surname]);
$prenotationData = $query->fetchAll();
$result = null;
if($prenotationData != null){
    $result = array(
        "data" => json_encode($prenotationData),
        "status" => "success",
    );
}else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);