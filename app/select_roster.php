<!DOCTYPE html>
<html>
<head>
	<title>MLB Rosters</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>

<?php
include_once './src/class.db.php';
$db      = DB::get_instance();
$query   = "SELECT * FROM teams ORDER BY team_name";
$results = mysqli_query( $db->connection(), $query );
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
					<td>Select team</td>
					<td>
						<?php if ( $results->num_rows > 0 ) : ?>
							<select name="team">
								<?php while ( $row = mysqli_fetch_assoc( $results ) ) : ?>
									<option value="<?php echo $row['team_id']; ?>"><?php echo $row['team_name']; ?></option>
								<?php endwhile; ?>
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