<?php
$cfg_db_host = 'localhost';
$cfg_db_db = 'gestionecole';
$cfg_db_user = 'root';
$cfg_db_password = '';

try{
    $conn = new PDO('mysql:host='.$cfg_db_host.';charset=utf8;dbname='.$cfg_db_db, $cfg_db_user , $cfg_db_password);
}
catch (Exception   $e){echo json_encode(array("retour"=>'Erreur de connexion à la bdd', "e" => $e )); die();}
?>