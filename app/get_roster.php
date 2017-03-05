<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM teams WHERE team_id = '$team'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo $row['team_name']. " team roster";
					}
					mysqli_close($dbc);
				?>
	</title>
	<style type="text/css">
		body {
			background-color: white;
		}
		
		#container {
			width: 300px;
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
					
					$team = $_POST['team'];

					$query = "SELECT * FROM teams WHERE team_id = '$team'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "<h1>" . $row['team_name'] . "</h1>";
					}

					mysqli_close($dbc);
				?>
		<p>Click <a href="select_roster.html">here</a> to select another team's roster.
		<table>		
			<tr><strong>Pitchers</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM players WHERE team_id = '$team' AND position = 'P' 
					ORDER BY position, player_lastname";
					
					$result = mysqli_query($dbc, $query);

					while ($row = mysqli_fetch_row($result)) {
						echo "\n<tr><td>" . $row['position'] . "</td>";
						echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
						echo "<td>" . $row['team_name'] . "</td></tr>";
									
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
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM players WHERE team_id = '$team' AND position = 'C' 
					ORDER BY position, player_lastname";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "\n<tr><td>" . $row['position'] . "</td>";
						echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
						echo "<td>" . $row['team_name'] . "</td></tr>";
									
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
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM players WHERE team_id = '$team' 
					AND position IN ('1B','2B','3B','SS','IF')
					ORDER BY position, player_lastname";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "\n<tr><td>" . $row['position'] . "</td>";
						echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
						echo "<td>" . $row['team_name'] . "</td></tr>";
									
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
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM players 
					WHERE team_id = '$team' 
					AND position IN ('LF','CF','RF','OF') 
					ORDER BY position, player_lastname";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "\n<tr><td>" . $row['position'] . "</td>";
						echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
						echo "<td>" . $row['team_name'] . "</td></tr>";
									
					}
					mysqli_close($dbc);
				?>
		</table><br>
		<table>
			<tr><strong>Designated Hitters</strong>
				<th>Position</th>
				<th>Player Name</th>
			</tr>
			<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$team = $_POST['team'];
					
					$query = "SELECT * FROM players WHERE team_id = '$team' AND position = 'DH' 
					ORDER BY position, player_lastname";
					
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