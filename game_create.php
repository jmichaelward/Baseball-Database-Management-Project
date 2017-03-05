<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>M</title>
	<style type="text/css">
		body {
			background-color: beige;
		}
		table {
			padding: 10px;
			border: 2px solid black;
			background-color: white;
		}
		
		td, th {
			padding: 5px
		}
	</style>
</head>
<body>
	<h1>Game submitted.</h1>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$datetime = $_POST['datetime'];
					$hteam = $_POST['hteam'];
					$ateam = $_POST['ateam'];
					$stadium = $_POST['stadium'];
					$umpcrew = $_POST['umpcrew'];
					
					$query = "INSERT INTO games VALUES" . 
					"('','$datetime','$hteam','$ateam','$stadium','$umpcrew')";
					
					$result = mysqli_query($dbc, $query);
					
					echo "<p>Thank you for submitting this game to the database.</p>";
									
					mysqli_close($dbc);
				?>
				
				<p>Click <a href="game_new.html">here</a> to submit another game.</p>
</body>
</html>