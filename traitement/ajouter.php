<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');




$table = $_POST['table'];; // on stocke le type dans une ariable

foreach($_POST as $index=>$v)
	{
	if($index!='id' and $index!='table' )
	{	
if($v=='null') $v=null;
if($index=='Nom_cl_a') $index='Nom_cl';
$v=str_replace("'", "‘" ,$v);
	$req1.="'".$v."',";
	$req2.=''.$index.',';
	}
	
	}	

$req1=substr($req1,0,-1);
$req2=substr($req2,0,-1);






   $sql = 'insert into '.$table.' ('.$req2.')   values('.$req1.')';
    $req = $conn->prepare($sql);
    $req->execute();  


	

$code=$req->errorInfo();



$result = $req->fetchAll(PDO::FETCH_ASSOC);


echo json_encode($code);	



?>