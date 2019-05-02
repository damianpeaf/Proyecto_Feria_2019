<?php

	include 'conexion.php';
	include 'verificacionU.php';

	$idV = $_GET["idV"];

	//echo $idV;

	$sql0 = mysql_query("SELECT dpi from usuariosCliente where nombreUsuario='".$_SESSION['usuario'] ."' ", $cn);

	$dpi = mysql_result($sql0, 0);

	// echo $dpi;

	// echo $idV;

	$sql =  mysql_query("SELECT * from vend where idV = '$idV' ", $cn);

	$idCdelVend = mysql_result($sql, 0, 1);

	$sql2 = mysql_query("SELECT * from usuariosCliente where dpi = '$idCdelVend' ", $cn);

	$nombre = mysql_result($sql2, 0, 0);

	if (isset($_POST["btn1"])) {

	$idV = $_POST["idV"];
	$pedido = $_POST["pedido"];

	if ($pedido == '') {
		die();
	}else{

		$sql3 = mysql_query("INSERT into consulta (idConsulta, idC, idV, pedido, estado) values(null, '$dpi', '$idV', '$pedido', 0) ", $cn);

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

	}

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Pedir peticion</title>
</head>
<body>
	<header>
		
	</header>
	<main>
		<form action="peticion.php" method="POST">
			<table>
				<tr>
					<td>Describe que trabajo quieres que realice <?php echo $nombre . ". "?> No olvides especificar en donde te encuentras</td>
				</tr>
				<tr>
					<td>
						<textarea name="pedido" placeholder="¿Que quieres que haga?"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Hacer Cotizacion" name="btn1">
					</td>
				</tr>
			</table>
			<input type="hidden" value="<?php echo $idV; ?>" name="idV">
		</form>
	</main>
</body>
</html>
