<?php
include_once './src/class.query.php';
include_once './src/class.team.php';
include_once './src/class.player.php';

$request_type = isset( $_POST['team'] ) ? INPUT_POST : INPUT_GET;
$team_id      = filter_input( $request_type, 'team', FILTER_SANITIZE_NUMBER_INT );
$team         = new Team( ( new Query )->team_by_id( $team_id ) );

$positions = [
	'Pitchers'           => 'P',
	'Catchers'           => 'C',
	'Infielders'         => [ '1B', '2B', 'SS', '3B', 'IF' ],
	'Outfielders'        => [ 'LF', 'CF', 'RF' ],
	'Designated Hitters' => 'DH'
];
$title = $team->name() . ' team roster';

include 'header.php';
?>

<article>
	<p>Click <a href="select_roster.php">here</a> to select another team's roster.</p>

	<?php foreach ( $positions as $section => $position ) : ?>
		<table>
			<tr>
				<h2><?php echo $section; ?></h2>
				<th>Position</th>
				<th>Player Name</th>
			</tr>

			<?php
			$players = ( new Query )->players_by_position( $team_id, $position );

			foreach ( $players as $data ) {
				$player = new Player( $data );

				echo "\n<tr><td>{$player->position()}</td>";
				echo "<td>{$player->name()}</td>";
				echo "<td>{$team->name()}</td>";
			}
			?>
		</table>
	<?php endforeach; ?>
</article>
<?php include 'footer.php'; ?>
