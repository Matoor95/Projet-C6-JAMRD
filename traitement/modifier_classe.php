<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');



$Nom_cl = $_POST['Nom_cl']; // on stocke le type dans une variable
$table = $_POST['table'];; // on stocke le type dans une variable

foreach($_POST as $index=>$v)
	{
	if($index!='Nom_cl' and $index!='table' )
	{	
if($v=='null') $v=0;
$v=str_replace("'", "''" ,$v);
	$req1.=$index."='".$v."',";
	}
	
	}	

$req1=substr($req1,0,-1);



   $sql = 'update '.$table.' set '.$req1.'  where Nom_cl="'.$Nom_cl.'"';
    $req = $conn->prepare($sql);
    $req->execute();  



$code=$req->errorInfo();



$result = $req->fetchAll(PDO::FETCH_ASSOC);


echo json_encode($code);



?>