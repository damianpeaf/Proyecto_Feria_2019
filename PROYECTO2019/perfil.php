<?php


	include 'conexion.php';
	include 'verificacionU.php';

	$idV = $_GET["idV"];

	// echo $idV;

?>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta http-equiv="Content-Type" content="text/html"; charset=utf-8"/> 
	<title>Perfil</title>
	<link rel="stylesheet" href="css/estilo6.css">
</head>
<body>

	<header>
		  <?php include 'Encabezado2.php'; ?>
	</header>

	<main>
	<div id="contenedor-general">
		
		<div id="contenedor-principal">
			<?php

				$sql1 = mysql_query("SELECT * from vend where idV ='$idV'", $cn);

				$oficio = mysql_result($sql1, 0, 2);
				$descripcion = mysql_result($sql1, 0, 3);
				$Ntrabajos = mysql_result($sql1, 0, 5);
				$rating = mysql_result($sql1, 0, 6);
				$avatar = mysql_result($sql1, 0, 7);
				$idC = mysql_result($sql1, 0,1);
				$idV = mysql_result($sql1, 0,0);

				$sql2 = mysql_query("SELECT * FROM usuariosCliente where dpi = '$idC' ", $cn);

				$nombreUsuario = mysql_result($sql2, 0, 2);
				$nombre = mysql_result($sql2, 0, 0);
				$apellido = mysql_result($sql2, 0, 1);

			?>

			<h3 class="center"> <?php echo $oficio.": " . $descripcion;  ?></h3>
			<h4>A cumplido <?php echo $Ntrabajos . " trabajos, con una calificacion (0-5) promedio de " . $rating; ?></h4>

			<div id="imagenes">
				<h3>Trabajos realizados</h3>

				<?php 

				$consultaAUX = mysql_query("SELECT * from trabajosRealizados where idV = '$idV'", $cn);

				$numConsultaAux = mysql_num_rows($consultaAUX); 

				// echo "SELECT * from trabajosRealizados where idV = '$idV'";

				$consulta = mysql_query("SELECT * from trabajosRealizados where idV = '$idV' order by idImagen desc limit 0, 3", $cn); 
				$numRows = mysql_num_rows($consulta);


				if ($numRows > 0) {
				

				for ($i=0; $i < $numRows; $i++) {  $imagen = mysql_result($consulta, $i, "imagen");	$descripcionImg = mysql_result($consulta, $i, "descripcion") ?>
				<img src="files/img/trabajos/<?php echo $imagen ?>" >
				<h4 id="descrip2">Descripcion: <?php echo $descripcionImg; ?></h4>
		<?php }
		echo "<h5> mostrando 3 imagenes de las " . $numConsultaAux . " disponibles, si quieres ver todas da click <a href='mostrarTodasIMG.php?idV=$idV' > aqui </a> </h5>" ;
	}else{

			echo "<h4 id='descrip2'> No hay imagenes</h4>";
		} ?>
			</div>


		</div>
		<div id="contenedor-lado">

			<div id="perfil" >
				<img src="files/img/<?php echo $avatar ?>" >
				<h3> <?php echo $nombreUsuario; ?></h3>
			</div>

			<div id="info">
				<h4><?php echo $nombre. " " . $apellido . ", " . $oficio; ?></h4>
				<h5 class="center">¿quieres conocer mas sobre <?php echo " ".$nombre; ?>? puedes descargar su Curriculum <a href="descarga.php?idV=<?php echo $idV; ?>"> aqui</a></h5>
			</div>

			<div id="comentarios">

				<div id="mostrandoComentarios">
					<h4 id="titulo10">Comentarios </h4>
					<?php 

				$sqlComentarios = mysql_query("SELECT * from comentario where idV='$idV' ", $cn);

					$numComentarios = mysql_num_rows($sqlComentarios);

					echo "<p> mostrando 5 de ". $numComentarios. " comentarios, para ver todos da click <a href='mostrarTodosComentarios.php?idV=$idV'> aqui </a> </p>";

					if ($numComentarios <= 0) {
						echo "<h6> no hay comentarios </h6>";
					}else{


						$sqlAux1 = mysql_query("SELECT * FROM comentario where idV = '$idV' order by idComentario desc limit 0,5", $cn);

						$numAux = mysql_num_rows($sqlAux1);

						for ($k=0; $k < $numAux; $k++) { 

						$idAuxCliente = mysql_result($sqlAux1, $k, "idC");

						// echo $idAuxCliente;

						$sqlAux2 = mysql_query("SELECT * from usuariosCliente where dpi = '$idAuxCliente' ", $cn);

						$nombreAux = mysql_result($sqlAux2, 0, "nombreUsuario");

						$comentarioAux = mysql_result($sqlAux1, $k, "comentario");

						echo "<br>";

						?>

						<p class="comentarioP" id="nombreComentario"> <?php echo $nombreAux; ?></p>
						<p class="comentarioP" id="comentarioComentario"><?php echo "   " .$comentarioAux; ?></p>

					<?php }} ?>
				</div>

				<form name="form1" method="post" action="">

					<label for="textarea"></label>
					<center>
						<p>
							<textarea  name="comentario"  id="cajaComentarios"></textarea>
						</p>
						<p id="btnComentar">
							<input  type="submit" value="Comentar" name="btnComentar">
						</p>
					</center>


					<?php 

						if (isset($_POST["btnComentar"])) {
						
							$sqlidC = mysql_query("SELECT * from usuariosCliente where nombreUsuario = '".$_SESSION['usuario'] ."' ", $cn);

							$idClienteComentario = mysql_result($sqlidC, 0, "dpi");

							$comentario = $_POST["comentario"];

							$sqlComent = mysql_query("INSERT into comentario values (null, '$idV', '$comentario', '$idClienteComentario')");

							if ($sqlComent) {
								header("location:perfil.php?idV=$idV");
							}

						}
					?>
				</form>


				<?php 

				// $sqlComentarios = mysql_query("SELECT * from comentario where idV='$idV' ", $cn);


				?>
			</div>

		</div>
	</div>
	</main>


	<footer>
		<div id="pie">
			<button id="peticion">
				<a href="peticion.php?idV=<?php echo $idV; ?>">Pedir cotizacion para trabajo</a>
			</button>
		</div>
	</footer>

</body>
</html>