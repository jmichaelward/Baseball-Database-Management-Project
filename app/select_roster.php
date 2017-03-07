<?php $title = 'MLB 40-Man Rosters'; ?>
<?php
include 'header.php';
include_once './src/class.query.php';
include_once './src/class.team.php';
?>
<article>
	<p>Select a team below to view its 40-man roster.
		<a href="player_summary.php">View all players</a>
	</p>

	<form method="POST" action="get_roster.php">
		<table>
			<tr>
				<td><label for="teams">Select team</label></td>
				<td>
					<?php if ( $teams = ( new Query )->all_teams() ) : ?>
						<select id="teams" name="team">
							<?php foreach ( $teams as $data ) :
								$team = new Team( $data );
								?>
								<option value="<?php echo $team->id(); ?>"><?php echo $team->name(); ?></option>
							<?php endforeach; ?>
						</select>
					<?php endif; ?>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="View Roster"/></td>
			</tr>
		</table>
	</form>
</article>
<?php include 'footer.php'; ?>
