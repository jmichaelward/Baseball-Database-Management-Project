<?php $title = 'Game submitted.'; ?>
<?php
include 'header.php';
include_once './src/class.db.php';
include_once './src/class.query.php';

$datetime  = filter_input( INPUT_POST, 'datetime', FILTER_SANITIZE_STRING );
$home_team = filter_input( INPUT_POST, 'hteam', FILTER_SANITIZE_STRING );
$away_team = filter_input( INPUT_POST, 'ateam', FILTER_SANITIZE_STRING );
$stadium   = filter_input( INPUT_POST, 'stadium', FILTER_SANITIZE_STRING );
$umpcrew   = filter_input( INPUT_POST, 'umpcrew', FILTER_SANITIZE_STRING );
?>

<article>
	<?php if ( ( new Query )->create_game( $datetime, $home_team, $away_team, $stadium, $umpcrew ) ) : ?>
		<p>Success! Thank you for submitting this game to the database.</p>
		<p>Click <a href="game_new.php">here</a> to submit another game.</p>
	<?php else : ?>
		<p>Hmm...that didn't work quite as we expected. Try again?</p>
	<?php endif; ?>
</article>
<?php include 'footer.php'; ?>
