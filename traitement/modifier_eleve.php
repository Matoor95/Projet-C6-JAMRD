<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');



$id = $_POST['id']; // on stocke le type dan sune ariable
$table = $_POST['table'];; // on stocke le type dan sune ariable

foreach($_POST as $index=>$v)
	{
	if($index!='id' and $index!='table' )
	{	
if($v=='null') $v=0;
if($index=='Nom_cl_a') $index='Nom_cl';
$v=str_replace("'", "‘" ,$v);
	$req1.=$index."='".$v."',";
	}
	
	}	

$req1=substr($req1,0,-1);



   $sql = 'update '.$table.' set '.$req1.'  where id='.$id.'';
    $req = $conn->prepare($sql);
    $req->execute();  



$code=$req->errorInfo();



$result = $req->fetchAll(PDO::FETCH_ASSOC);


echo json_encode($code);



?>