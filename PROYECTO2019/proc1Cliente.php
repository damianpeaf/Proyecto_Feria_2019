<?php 

include 'conexion.php';
	include 'verificacionU.php';

$idConsulta = $_POST["idConsulta"];
$desicion = $_POST["desicion"];


if ( $desicion == 0) {

$sql1 = mysql_query("UPDATE consulta set estado=2 where idConsulta = '$idConsulta' ", $cn);

}elseif ( $desicion == 1){

$sql2 = mysql_query("UPDATE consulta set respuesta = 'Cancelado por el cliente', estado=4, rating=0 where idConsulta = '$idConsulta' ", $cn);

}else{

	$sql2 = mysql_query("UPDATE consulta set respuesta = 'Cancelado por el cliente', estado=4, rating=0 where idConsulta = '$idConsulta' ", $cn);


}



if ($sql1) {
		echo "<script>
                alert('Le enviaremos una notificacion al vendedor, chequea las notificaciones para saber cuando empezara con el trabajo');
                window.location= 'notificaciones.php'
    </script>";
 
}else{
	echo mysql_error();
}

if ($sql2) {
	echo "<script>
                alert('Esperamos que encuentres a alguien que te ayude');
                window.location= 'notificaciones.php'
    </script>";
}



?>