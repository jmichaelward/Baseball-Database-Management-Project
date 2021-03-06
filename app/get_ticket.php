<?php $title = 'Available Tickets'; ?>
<?php include 'header.php'; ?>
<article>
	<?php
	include_once './src/class.db.php';

	$db      = DB::get_instance();
	$game    = filter_input( INPUT_POST, 'game', FILTER_SANITIZE_STRING );
	$section = filter_input( INPUT_POST, 'section', FILTER_SANITIZE_STRING );
	$query   = "SELECT * FROM gameschedule WHERE game_id = '$game'";
	$result  = mysqli_query( $db->connection(), $query );

	while ( $row = mysqli_fetch_assoc( $result ) ) {
		echo "Available tickets in Section $section" . "<br>";
		echo $row['awayteam'] . " Vs. " . $row['hometeam'] . " at " . $row['stad_name'] . "<br>";
		echo $row['game_datetime'];
	}

	$db->disconnect();
	?>
	<table>
		<th>Section</th>
		<th>Row</th>
		<th>Seat</th>
		<th>Ticket Price</th>
		<?php
		$game    = filter_input( INPUT_POST, 'game', FILTER_SANITIZE_STRING );
		$section = filter_input( INPUT_POST, 'section', FILTER_SANITIZE_STRING );
		$query   = "SELECT games.game_id, section_no, row_no, seat_no, ticket_price
					FROM tickets INNER JOIN games
					ON tickets.game_id = games.game_id RIGHT OUTER JOIN seats
					ON tickets.seat_id = seats.seat_id
					WHERE cust_id IS NULL
					AND section_no = '$section'
					AND tickets.game_id = '$game'";
		$result  = mysqli_query( $db->connection(), $query );

		while ( $row = mysqli_fetch_assoc( $result ) ) {
			echo "\n<tr><td>" . $row['section_no'] . "</td>";
			echo "<td>" . $row['row_no'] . "</td>";
			echo "<td>" . $row['seat_no'] . "</td>";
			echo "<td>" . $row['ticket_price'] . "</td>";
		}

		$db->disconnect();
		?>
	</table>

	<p><a href="ticket_search.php">Perform another search.</a></p>
</article>
<?php include 'footer.php'; ?>
