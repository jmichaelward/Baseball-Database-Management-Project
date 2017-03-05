<!DOCTYPE html>
<html>
<head>
	<title>MLB Player Summary</title>
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
			padding: 5px;
		}
	</style>
</head>
<body>
	<div id="container">
		<h1>MLB Player Summary</h1>
		<p>Below is a list of MLB players, sorted by team.
		<a href="player_new.html">Add new player.</a></p>
		
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				
				$query = "SELECT COUNT(team_name) FROM playerteams";
				$result = mysqli_query($dbc, $query) or die(mysql_error());
				
				while($row = mysqli_fetch_array($result)){
					echo "There are " . $row['COUNT(team_name)'] . " players in the database.";
					
				}
			?>
		
		<table>
			<tr>
				<th>Position</th>
				<th>Player Name</th>
				<th>Team</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				$query = "SELECT * FROM playerteams ORDER BY team_name, position, player_lastname";
				$result = mysqli_query($dbc, $query);
				
				while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['position'] . "</td>";
					echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
					echo "<td>" . $row['team_name'] . "</td></tr>";
					
				}
				
				mysqli_close($dbc);
			?>
		</table>
	</div>
</body>
</html>