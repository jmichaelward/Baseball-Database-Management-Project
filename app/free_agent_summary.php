<?php
$title = 'MLB Free Agent Summary';
include 'functions.php';
include_once './src/class.query.php';
include_once './src/class.player.php';
include 'header.php';

$positions = get_player_positions();
?>
<article>
	<p>Below is a list of MLB free agent players. These players are not currently signed by any team.</p>
	<?php foreach ( $positions as $section => $position ) : ?>
		<h2><?php echo $section; ?></h2>
		<table>
			<tr>
				<th>Position</th>
				<th>Player Name</th>
			</tr>

			<?php
			foreach ( ( new Query )->free_agents_by_position( $position ) as $data ) {
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
