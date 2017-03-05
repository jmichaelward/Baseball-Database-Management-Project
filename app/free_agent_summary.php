<!DOCTYPE html>
<html>
<head>
	<title>MLB Free Agent Summary</title>
	<style type="text/css">
		body {
			background-color: white;
		}
		
		#container {
			width: 400px;
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
		<h1>MLB Free Agent Summary</h1>
		<p>Below is a list of MLB free agent players. These players are not currently signed by any team.</p>	
		<table>
			<tr><strong>Pitchers</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				$query = "SELECT * FROM freeagents WHERE position = 'P'
				ORDER BY player_lastname";
				$result = mysqli_query($dbc, $query);
				
				while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['position'] . "</td>";
					echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
				}
				
				mysqli_close($dbc);
			?>
		</table><br>
		<table>
			<tr><strong>Catchers</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				$query = "SELECT * FROM freeagents WHERE position = 'C'
				ORDER BY player_lastname";
				$result = mysqli_query($dbc, $query);
				
				while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['position'] . "</td>";
					echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
				}
				
				mysqli_close($dbc);
			?>
		</table><br>
		<table>
			<tr><strong>Infielders</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				$query = "SELECT * FROM freeagents WHERE position IN ('1B','2B','3B','SS','IF')
				ORDER BY position, player_lastname";
				$result = mysqli_query($dbc, $query);
				
				while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['position'] . "</td>";
					echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
				}
				
				mysqli_close($dbc);
			?>
		</table><br>
			<table>
			<tr><strong>Outfielders</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
			
			<?php
				$dbc = mysqli_connect('localhost', 'root', 'root', 'baseball')
					or die('Error connecting the MySQL server.');
				$query = "SELECT * FROM freeagents WHERE position IN ('LF','CF','RF','OF')
				ORDER BY position, player_lastname";
				$result = mysqli_query($dbc, $query);
				
				while ($row = mysqli_fetch_array($result)) {
					echo "\n<tr><td>" . $row['position'] . "</td>";
					echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
				}
				
				mysqli_close($dbc);
			?>
		</table>
	</div>
</body>
</html>