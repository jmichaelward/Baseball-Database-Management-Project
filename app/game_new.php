<!DOCTYPE html>
<html>
<head>
	<title>MLB Matchup Entry Form</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>

<?php
include_once './src/class.query.php';
include_once './src/class.team.php';

$query = ( new Query )->all_teams();
$teams = array_map( function ( $team ) {
	return new Team( $team );
}, $query );
?>
<body>
<div id="container">
	<h1>MLB Matchup Entry Form</h1>
	<p>Please use this form to add new games to the database.
		<a href="game_summary.php">View all games</a>
	</p>

	<form method="POST" action="game_create.php">
		<table>
			<tr>
				<td>Date and time of game</td>
				<td><input type="text" name="datetime"/>(YYYY-MM-DD HH:MM:SS)</td>
			</tr>

			<tr>
				<td>Home Team</td>
				<td>
					<select name="hteam">
						<option value="">Select a home team.</option>
						<?php foreach ( $teams as $team ) : ?>
						<option value="<?php echo $team->id(); ?>"><?php echo $team->name(); ?>
							<?php endforeach; ?>
					</select>
				</td>
			</tr>

			<tr>
				<td>Away Team</td>
				<td>
					<select name="ateam">
						<option value="">Select an away team.</option>
						<?php foreach ( $teams as $team ) : ?>
						<option value="<?php echo $team->id(); ?>"><?php echo $team->name(); ?>
							<?php endforeach; ?>
					</select>
				</td>
			</tr>

			<tr>
				<td>Select the home stadium.</td>
				<td>
					<select name="stadium">
						<option value="">Select the team that will host.</option>
						<?php foreach ( $teams as $team ) : ?>
						<option value="<?php echo $team->id(); ?>"><?php echo $team->name(); ?>
							<?php endforeach; ?>
					</select>
				</td>
			</tr>

			<tr>
				<td>Umpire Crew</td>
				<td>Select the officiating team.<br>
					<input type="radio" name="umpcrew" value="1"/>Davis/Hohn/Gibson/Holbrook<br>
					<input type="radio" name="umpcrew" value="2"/>DeMuth/Danley/Eddings/Nauert<br>
					<input type="radio" name="umpcrew" value="3"/>McClelland/Barrett/Runge/Hudson<br>
					<input type="radio" name="umpcrew" value="4"/>Hirschbeck/Belly/Diaz/Barksdale<br>
					<input type="radio" name="umpcrew" value="5"/>Welke/Reynolds/DiMuro/Fletcher<br>
					<input type="radio" name="umpcrew" value="6"/>Scott/Meals/Bucknor/Iassogna<br>
					<input type="radio" name="umpcrew" value="7"/>West/Hernandez/Schrieber/Fairchild<br>
					<input type="radio" name="umpcrew" value="8"/>Darling/Dreckman/Emmel/Drake<br>
					<input type="radio" name="umpcrew" value="9"/>Tschida/Nelson/Foster/Welke<br>
					<input type="radio" name="umpcrew" value="10"/>Cousins/Joyce/Kulpa/Wolf<br>
					<input type="radio" name="umpcrew" value="11"/>Cederstrom/Culbreth/Johnson/Barksdale<br>
					<input type="radio" name="umpcrew" value="12"/>Layne/Davidson/Wendelstedt/Knight<br>
					<input type="radio" name="umpcrew" value="13"/>Gorman/Vanover/Randazzo/Bellino<br>
					<input type="radio" name="umpcrew" value="14"/>Kellogg/Cooper/Carlson/Timmons<br>
					<input type="radio" name="umpcrew" value="15"/>Hallion/Miller/Cuzzi/Hoye<br>
					<input type="radio" name="umpcrew" value="16"/>Winters/Everitt/Wegner/Guccione<br>
					<input type="radio" name="umpcrew" value="17"/>Rapuano/O'Nora/Marquez/Hickox
				</td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Submit Game"/></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>