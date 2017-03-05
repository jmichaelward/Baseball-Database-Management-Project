<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>MLB Player Submitted</title>
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
	<h1>MLB player submitted.</h1>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$fname = $_POST['fname'];
					$lname = $_POST['lname'];
					$position = $_POST['position'];
					$team = $_POST['team'];
					
					$query = "INSERT INTO players VALUES" . 
					"('','$fname','$lname','$position','$team')";
					
					$result = mysqli_query($dbc, $query);
					
					echo "<p>Thank you for submitting $fname $lname to the database.</p>";
									
					mysqli_close($dbc);
				?>
				
				<p>Click <a href="player_new.html">here</a> to submit another player.</p>
</body>
</html>