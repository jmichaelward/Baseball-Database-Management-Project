<?php
include_once './src/class.query.php';
include_once './src/class.team.php';

$team_id   = $_REQUEST['team'];
$team      = new Team( ( new Query )->team_by_id( $team_id ) );
$positions = [
	'Pitchers'           => 'P',
	'Catchers'           => 'C',
	'Infielders'         => [ '1B', '2B', 'SS', '3B', 'IF' ],
	'Outfielders'        => [ 'LF', 'CF', 'RF' ],
	'Designated Hitters' => 'DH'
];
$db        = DB::get_instance();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo $team->name() . ' team roster'; ?></title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div id="container">
	<h1><?php echo $team->name(); ?></h1>
	<p>Click <a href="select_roster.php">here</a> to select another team's roster.</p>

	<?php foreach ( $positions as $section => $position ) : ?>
		<table>
			<tr>
				<h2><?php echo $section; ?></h2>
				<th>Position</th>
				<th>Player Name</th>
			</tr>

			<?php
			$where  = is_array( $position ) ? ' IN ("' . implode( '", "', $position ) . '")' : " = '{$position}'";
			$query  = "SELECT * FROM players
				LEFT JOIN teams
				ON players.team_id = teams.team_id
				WHERE position {$where}
				AND players.team_id = '$team_id'
				ORDER BY position, player_lastname";
			$result = mysqli_query( $db->connection(), $query );

			while ( $row = mysqli_fetch_assoc( $result ) ) {
				echo "\n<tr><td>" . $row['position'] . "</td>";
				echo "<td>" . $row['player_firstname'] . "&nbsp" . $row['player_lastname'] . "</td>";
				echo "<td>" . $row['team_name'] . "</td></tr>";
			}

			$db->disconnect();
			?>
		</table>
	<?php endforeach; ?>
</div>
</body>
</html>