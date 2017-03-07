<?php $title = 'MLB Player Submitted'; ?>
<?php include 'header.php'; ?>
<article>
	<?php
	include_once './src/class.db.php';
	$db = DB::get_instance();

	$fname    = filter_input( INPUT_POST, 'fname', FILTER_SANITIZE_STRING );
	$lname    = filter_input( INPUT_POST, 'lname', FILTER_SANITIZE_STRING );
	$position = filter_input( INPUT_POST, 'position', FILTER_SANITIZE_STRING );
	$team     = filter_input( INPUT_POST, 'team', FILTER_SANITIZE_STRING );
	$query    = "INSERT INTO players VALUES ('','$fname','$lname','$position','$team')";
	$result   = mysqli_query( $db->connection(), $query );

	echo "<p>Thank you for submitting $fname $lname to the database.</p>";

	$db->disconnect();
	?>

	<p>Click <a href="player_new.php">here</a> to submit another player.</p>
</article>
<?php include 'footer.php'; ?>
