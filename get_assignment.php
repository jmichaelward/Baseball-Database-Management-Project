<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Umpire Assignment
	</title>
	<style type="text/css">
		body {
			background-color: white;
		}
		
		#container {
			width: 800px;
			margin: 0 auto;
		}
		
		table {
			background-color: beige;
			border: 2px solid black;
			padding: 10px;
			width: 100%;
		}
		
		th {
			text-align: left;
		}
		
		td, th {
			vertical-align: top;
			padding: 1px;
		}
	</style>
</head>
<body>
<div id="container">
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$date = $_POST['date'];
					$crew = $_POST['crew'];
					
					$query = "SELECT DISTINCT(crew_id), game_datetime, stad_name, 
					hometeam, awayteam FROM umpschedule 
					WHERE game_datetime LIKE '$date%'
					and crew_id = '$crew'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "<h1>Game assignment for Umpire Crew #$crew on $date</h1>";
					}
					mysqli_close($dbc);
				?>

		<table>
		<tr><th>Game Date and Time</th>
			<th>Stadium</th>
			<th>Crew Number</th>
			<th>Home team</th>
			<th>Away team</th>
			
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$date = $_POST['date'];
					$crew = $_POST['crew'];
					
					$query = "SELECT DISTINCT(crew_id), game_datetime, stad_name, 
					hometeam, awayteam FROM umpschedule 
					WHERE game_datetime LIKE '$date%'
					and crew_id = '$crew'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "\n<tr><td>" . $row['game_datetime'] . "</td>";
						echo "<td>" . $row['stad_name'] . "</td>";
						echo "<td>" . $row['crew_id'] . "</td>";
						echo "<td>" . $row['hometeam'] . "</td>";
						echo "<td>" . $row['awayteam'] . "</td>";
					}
					mysqli_close($dbc);
				?>
		<p>Click <a href="ump_assignments.html">here</a> to search for another assignment.
		
		</table>
</div>
</body>
</html>