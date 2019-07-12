<?php

	include 'conexion.php';
	include 'verificacionU.php';

	$idV = $_POST["idV"];

	//echo $idV;

	$sql0 = mysql_query("SELECT dpi from usuariosCliente where nombreUsuario='".$_SESSION['usuario'] ."' ", $cn);

	$dpi = mysql_result($sql0, 0);

	// echo $dpi;

	// echo $idV;

	$sql =  mysql_query("SELECT * from vend where idV = '$idV' ", $cn);

	$idCdelVend = mysql_result($sql, 0, 1);

	$sql2 = mysql_query("SELECT * from usuariosCliente where dpi = '$idCdelVend' ", $cn);

	$nombre = mysql_result($sql2, 0, 0);

	$idV = $_POST["idV"];
	$pedido = $_POST["pedido"];

	$sql3 = mysql_query("SELECT idC from vend where idV='$idV'");

	$idCdelVend = mysql_result($sql3, 0, 0);

	if ($pedido == '') {
		die();
	}else{

		$sql3 = mysql_query("INSERT into consulta (idConsulta, idC, idV, pedido, estado, idCdelVendedor) values(null, '$dpi', '$idV', '$pedido', 0,  '$idCdelVend') ", $cn);

		if (!$sql3) {
			echo "<script> alert('no se pudo realizar la cotizacion');</script>";
			echo mysql_error();
		}else{

			echo "<script>
                alert('Cotizacion enviada, Chequea tus notificaciones para sabes si tienes alguna respuesta');
                window.location= 'paginaBienvenida.php'
    </script>";


		}
	}

?>