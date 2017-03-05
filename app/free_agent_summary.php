<!DOCTYPE html>
<html>
<head>
	<title>MLB Free Agent Summary</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
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
		include_once './src/class.db.php';
		$db = DB::get_instance();

		$query  = "SELECT * FROM freeagents WHERE position = 'P'
				ORDER BY player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
	<br>
	<table>
		<tr><strong>Catchers</strong>
			<th>Position</th>
			<th>Player Name</th>
		</tr>

		<?php
		$query  = "SELECT * FROM freeagents WHERE position = 'C'
				ORDER BY player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
	<br>
	<table>
		<tr><strong>Infielders</strong>
			<th>Position</th>
			<th>Player Name</th>
		</tr>

		<?php
		$dbc = mysqli_connect( 'localhost', 'root', 'root', 'baseball' )
		or die( 'Error connecting the MySQL server.' );
		$query  = "SELECT * FROM freeagents WHERE position IN ('1B','2B','3B','SS','IF')
				ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
	<br>
	<table>
		<tr><strong>Outfielders</strong>
			<th>Position</th>
			<th>Player Name</th>
		</tr>

		<?php
		$query  = "SELECT * FROM freeagents WHERE position IN ('LF','CF','RF','OF')
				ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
</div>
</body>
</html>