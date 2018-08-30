<!DOCTYPE html>
<html>
<head>
	<title>Filtrar</title>

	<?php 

		require('config.php');

		$sql = "SELECT * FROM tb_cursos";
		$sql_cate = "SELECT * FROM tb_categorias";


		if (isset($_GET['categoria'])) {
			$sql = "SELECT * FROM tb_cursos WHERE categoria = '".$_GET['categoria']."'";

			if ($_GET['categoria'] == 'todos') {
				$sql = "SELECT * FROM tb_cursos";
			}
		}

			$query_cate = mysqli_query($conexao, $sql_cate);
			$query = mysqli_query($conexao, $sql);

		if (isset($_GET['opc'])) {
			if ($_GET['opc'] == 'cada') {
				header('location:cadastrar.php');
			}
		}

	 ?>

	 <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>
<body>

<div class="container-fluid">

	<div style="background-color: rgba(0,0,0,0.7);" class="navbar">
		<br>
		<div class="row">
			<div class="col-md-2">
		<form method="get">
			<select class="form form-control" name="categoria">
				<option value="todos">Todos</option>
				<?php
					while ($dados = mysqli_fetch_assoc($query_cate)) {
					echo "<option value='".$dados['num_cate']."'>".$dados['nome_cate']."</option>";
					}
				?>
			</select>
			</div>

			<div class="col-md-5">
			<input class="btn btn-info" type="submit" name="" value="Filtrar">
			<a style="text-decoration: none; color: white;" href="?opc=cada"><input class="btn btn-success" type="" name="" value="Cadastrar"></a>
			</div>
			<br><br><br>
		</form>
		</div>
	</div>

	<div class="container-fluid">
	<div class="row">
	<?php 
			while ($dados = mysqli_fetch_assoc($query)) {
				echo "
				<div class='col-md-3'>
				<img class='img-responsive' style='width: 300px; height: 300px;' src='images/".$dados['imagem']."'>
				<br>
				<b>Curso: ".$dados['nome_curso']."</b>
				<br>Carga horária: 
				".$dados['ch']." horas;
				<br>Nível: 
				".$dados['nivel'].";
				<br><br><br><br>
				</div>
				";
				
			}
		?>
	</div>
	</div>
</div>

</body>
</html>