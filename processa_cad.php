<?php
	include_once("conexao.php");
	$name = mysqli_real_escape_string($conn, $_POST['name']);
	$sex = mysqli_real_escape_string($conn, $_POST['sex']);
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	$CPF = mysqli_real_escape_string($conn, $_POST['CPF']);
	$birth_date = mysqli_real_escape_string($conn, $_POST['birth_date']);
	$password = mysqli_real_escape_string($conn, $_POST['password']);
	
	$result_patient = "INSERT INTO patient (name, sex, email, CPF, birth_date, password) VALUES ('$name', '$sex', '$email', '$CPF', '$birth_date', '$password')";	
	$resultado_patient = mysqli_query($conn, $result_patient);	
?>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
	</head>

	<body> <?php
		if(mysqli_affected_rows($conn) != 0){
			echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/index.php'>
				<script type=\"text/javascript\">
					alert(\"Cliente Cadastrado com Sucesso.\");
				</script>
			";	
		}else{
			echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/index.php'>
				<script type=\"text/javascript\">
					alert(\"Cliente nao foi cadastrado corretamente.\");
				</script>
			";	
		}?>
	</body>
</html>
<?php $conn->close(); ?>