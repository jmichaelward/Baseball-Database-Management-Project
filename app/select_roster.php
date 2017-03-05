<!DOCTYPE html>
<html>
<head>
	<title>MLB Rosters</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>

<?php
include_once './src/class.query.php';
include_once './src/class.team.php';
?>

<body>
<div id="container">
	<h1>MLB 40-Man Rosters</h1>
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
</div>
</body>
</html>