<!DOCTYPE html>
<html>
<head>
	<title>MLB Games Summary</title>
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
		<h1>MLB Games Summary</h1>
		<p>Below is a list scheduled MLB games, ordered by date.
		<a href="game_new.html">Add new game.</a></p>
		
		<table>
			<tr>
				<th>Game Date & Time</th>
				<th>Visitor</th>
				<th>Home</th>
				<th>Stadium</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				
				$query = "SELECT game_datetime, awayteam, hometeam, stad_name
				FROM gameschedule";
				$result = mysqli_query($dbc, $query) or die(mysql_error());
				
			while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['game_datetime'] . "</td>";
					echo "<td>" . $row['awayteam'] . "</td>";
					echo "<td>" . $row['hometeam'] . "</td>";
					echo "<td>" . $row['stad_name'] . "</td></tr>";
				}
			?>
		</table>
	</div>
</body>
</html>