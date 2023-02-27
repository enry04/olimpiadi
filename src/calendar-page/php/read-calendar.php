<?php

require("../../common/php/connection.php");

$mysql = new ConnectionMySQL();
$pdo = $mysql->getConnection();

$query = $pdo->query("SELECT * FROM tGara INNER JOIN tSede ON tGara.idFase = tSede.id INNER JOIN tRegione ON tSede.idRegione = tRegione.id INNER JOIN tNazionalita ON tRegione.idNazionalita = tNazionalita.id INNER JOIN tFase ON tGara.idFase = tFase.id WHERE data > now() ORDER BY data");
$calendarData = $query->fetchAll();
$result = null;
if($calendarData != null){
    $result = array(
        "data" => json_encode($calendarData),
        "status" => "success",
    );
}else {
    $result = array(
        "data" => null,
        "status" => "error",
    );
}

echo json_encode($result);