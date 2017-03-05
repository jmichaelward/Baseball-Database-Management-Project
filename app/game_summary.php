<!DOCTYPE html>
<html>
<head>
	<title>MLB Games Summary</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
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
		include_once './src/class.db.php';
		$db    = DB::get_instance();
		$query = "SELECT game_datetime, awayteam, hometeam, stad_name FROM gameschedule";
		$result = mysqli_query( $db->connection(), $query ) or die( mysqli_error( $db->connection() ) );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
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