<?php $title = 'Umpire Assignment'; ?>
<?php include 'header.php'; ?>
<article>
	<?php
	include_once './src/class.db.php';
	$db = DB::get_instance();
	$date = filter_input( INPUT_POST, 'date', FILTER_SANITIZE_STRING );
	$crew = filter_input( INPUT_POST, 'crew', FILTER_SANITIZE_STRING );
	$query = "SELECT DISTINCT(crew_id), game_datetime, stad_name, 
					hometeam, awayteam FROM umpschedule 
					WHERE game_datetime LIKE '$date%'
					and crew_id = '$crew'";
	$result = mysqli_query( $db->connection(), $query );

	while ( $row = mysqli_fetch_assoc( $result ) ) {
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
			$date = filter_input( INPUT_POST, 'date', FILTER_SANITIZE_STRING );
			$crew = filter_input( INPUT_POST, 'crew', FILTER_SANITIZE_STRING );

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
			<p>Click <a href="ump_assignments.php">here</a> to search for another assignment.
	</table>
</article>
<?php include 'footer.php'; ?>
