<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');



$id = $_POST['id']; // on stocke le type dan sune ariable
$table = $_POST['table']; // on stocke le type dan sune ariable



    $sql = 'delete from '.$table.' where id='.$id.'';
    $req = $conn->prepare($sql);
    $req->execute();  


$code=$req->errorInfo();



$result = $req->fetchAll(PDO::FETCH_ASSOC);


echo json_encode($code);



?>