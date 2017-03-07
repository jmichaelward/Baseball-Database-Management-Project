<?php $title = 'MLB Player Summary'; ?>
<?php include 'header.php'; ?>
<article>
	<p>Below is a list of MLB players, sorted by team.
		<a href="player_new.php">Add new player.</a></p>

	<?php
	include_once './src/class.db.php';

	$db    = DB::get_instance();
	$query = "SELECT COUNT(team_name) FROM playerteams";
	$result = mysqli_query( $db->connection(), $query ) or die( mysqli_error( $db->connection() ) );

	while ( $row = mysqli_fetch_assoc( $result ) ) {
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
		$query  = "SELECT * FROM playerteams ORDER BY team_name, position, player_lastname";
		$result = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['position'] . "</td>";
			echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
			echo "<td>" . $row['team_name'] . "</td></tr>";

		}

		$db->disconnect();
		?>
	</table>
</article>
<?php include 'footer.php'; ?>
