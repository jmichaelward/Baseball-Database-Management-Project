<?php
include_once './src/class.query.php';
include_once './src/class.team.php';
include_once './src/class.player.php';
include_once 'functions.php';

$request_type = isset( $_POST['team'] ) ? INPUT_POST : INPUT_GET;
$team_id      = filter_input( $request_type, 'team', FILTER_SANITIZE_NUMBER_INT );
$team         = new Team( ( new Query )->team_by_id( $team_id ) );
$title        = $team->name() . ' team roster';

include 'header.php';
?>

<article>
	<p>Click <a href="select_roster.php">here</a> to select another team's roster.</p>

	<?php foreach ( get_player_positions() as $section => $position ) : ?>
		<h2><?php echo $section; ?></h2>
		<table>
			<tr>
				<th>Position</th>
				<th>Player Name</th>
			</tr>

			<?php
			foreach ( ( new Query )->players_by_position( $position, $team_id ) as $data ) {
				echo '<tr>';
				$player = new Player( $data );

				echo "<td>{$player->position()}</td>";
				echo "<td>{$player->name()}</td>";
				echo '</tr>';
			}
			?>
		</table>
	<?php endforeach; ?>
</article>
<?php include 'footer.php'; ?>
