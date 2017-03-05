<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>
		<?php
		include_once './src/class.db.php';
		$db = DB::get_instance();
		$team = $_REQUEST['team'];
		$query = "SELECT * FROM teams WHERE team_id = '$team'";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_array( $result ) ) {
			echo $row['team_name'] . " team roster";
		}

		$db->disconnect();
		?>
	</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="container">
	<?php
	include_once './src/class.db.php';

	$team   = $_REQUEST['team'];
	$query  = "SELECT * FROM teams WHERE team_id = '$team'";
	$result = mysqli_query( $db->connection(), $query );

	while ( $row = mysqli_fetch_array( $result ) ) {
		echo "<h1>" . $row['team_name'] . "</h1>";
	}

	$db->disconnect();
	?>

	<p>Click <a href="select_roster.php">here</a> to select another team's roster.
	<table>
		<tr><strong>Pitchers</strong>
			<th>Position</th>
			<th>Player Name</th>
		</tr>
		<?php
		$team   = $_REQUEST['team'];
		$query = "SELECT * FROM players
			LEFT JOIN teams
			ON players.team_id = teams.team_id
			WHERE position = 'P'
			AND players.team_id = '$team'
			ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";

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
		$team   = $_REQUEST['team'];
		$query = "SELECT * FROM players
			LEFT JOIN teams
			ON players.team_id = teams.team_id
			WHERE position = 'C'
			AND players.team_id = '$team'
			ORDER BY position, player_lastname";

		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";

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
		$team  = $_REQUEST['team'];
		$query = "SELECT * FROM players
			LEFT JOIN teams
			ON players.team_id = teams.team_id
			WHERE position IN ('1B', '2B', '3B', 'SS', 'IF')
			AND players.team_id = '$team'
			ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";

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
		$team  = $_REQUEST['team'];
		$query = "SELECT * FROM players
			LEFT JOIN teams
			ON players.team_id = teams.team_id
			WHERE position IN ('LF', 'CF', 'RF', 'OF')
			AND players.team_id = '$team'
			ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
	<br>
	<table>
		<tr><strong>Designated Hitters</strong>
			<th>Position</th>
			<th>Player Name</th>
		</tr>
		<?php
		$team   = $_REQUEST['team'];
		$query = "SELECT * FROM players
			LEFT JOIN teams
			ON players.team_id = teams.team_id
			WHERE position = 'DH'
			AND players.team_id = '$team'
			ORDER BY position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";
		}

		$db->disconnect();
		?>
	</table>
</div>
</body>
</html>