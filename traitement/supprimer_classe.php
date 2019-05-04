<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');



$classe = $_POST['classe']; // on stocke le type dan sune ariable


   $sql = 'delete from classes where Nom_cl="'.$classe.'"';
    $req = $conn->prepare($sql);
    $req->execute();  



$code=$req->errorInfo();



$result = $req->fetchAll(PDO::FETCH_ASSOC);


echo json_encode($code);



?>