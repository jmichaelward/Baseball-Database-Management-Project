<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Umpire Assignment
	</title>
	<link href="/assets/style.css" rel="stylesheet" type=text/css"/>
</head>
<body>
<div id="container">
	<?php
	include_once './src/class.db.php';
	$db = DB::get_instance();
	$date = $_POST['date'];
	$crew = $_POST['crew'];
	$query = "SELECT DISTINCT(crew_id), game_datetime, stad_name, 
					hometeam, awayteam FROM umpschedule 
					WHERE game_datetime LIKE '$date%'
					and crew_id = '$crew'";
	$result = mysqli_query( $db->connection(), $query );

	while ( $row = mysqli_fetch_array( $result ) ) {
		echo "<h1>Game assignment for Umpire Crew #$crew on $date</h1>";
	}

	$db->disconnect();
	?>

	<table>
		<tr>
			<th>Game Date and Time</th>
			<th>Stadium</th>
			<th>Crew Number</th>
			<th>Home team</th>
			<th>Away team</th>

			<?php
			$date = $_POST['date'];
			$crew = $_POST['crew'];

			$query = "SELECT DISTINCT(crew_id), game_datetime, stad_name, 
					hometeam, awayteam FROM umpschedule 
					WHERE game_datetime LIKE '$date%'
					and crew_id = '$crew'";

			$result = mysqli_query( $db->connection(), $query );

			while ( $row = mysqli_fetch_assoc( $result ) ) {
				echo "\n<tr><td>" . $row['game_datetime'] . "</td>";
				echo "<td>" . $row['stad_name'] . "</td>";
				echo "<td>" . $row['crew_id'] . "</td>";
				echo "<td>" . $row['hometeam'] . "</td>";
				echo "<td>" . $row['awayteam'] . "</td>";
			}

			$db->disconnect();
			?>
			<p>Click <a href="ump_assignments.html">here</a> to search for another assignment.

	</table>
</div>
</body>
</html>