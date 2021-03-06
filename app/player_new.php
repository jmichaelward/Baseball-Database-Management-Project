<?php $title = 'MLB Player Entry Form'; ?>
<?php include 'header.php'; ?>
<article>
	<p>Please use this form to add new players to the database.
		<a href="player_summary.php">View all players</a>
	</p>
	<form method="POST" action="player_create.php">
		<table>
			<tr>
				<td>Player First Name</td>
				<td><input type="text" name="fname"/></td>
			</tr>
			<tr>
				<td>Player Last Name</td>
				<td><input type="text" name="lname"/></td>
			</tr>
			<tr>
				<td>Player Position</td>
				<td>
					<!-- TODO: Populate this dynamically with a database query -->
					<input type="radio" name="position" value="P"/>P<br>
					<input type="radio" name="position" value="C"/>C<br>
					<input type="radio" name="position" value="1B"/>1B<br>
					<input type="radio" name="position" value="2B"/>2B<br>
					<input type="radio" name="position" value="3B"/>3B<br>
					<input type="radio" name="position" value="SS"/>SS<br>
					<input type="radio" name="position" value="LF"/>LF<br>
					<input type="radio" name="position" value="CF"/>CF<br>
					<input type="radio" name="position" value="RF"/>RF<br>
					<input type="radio" name="position" value="DH"/>DH<br>
					<input type="radio" name="position" value="IF"/>IF<br>
					<input type="radio" name="position" value="OF"/>OF<br></td>
			</tr>
			<tr>
				<td>Team</td>
				<!-- TODO: Populate this dynamically with a database query -->
				<td>Which team does this player play for?<br>
					<input type="radio" name="team" value="1"/>Baltimore Orioles<br>
					<input type="radio" name="team" value="2"/>Boston Red Sox<br>
					<input type="radio" name="team" value="3"/>New York Yankees<br>
					<input type="radio" name="team" value="4"/>Tampa Bay Rays<br>
					<input type="radio" name="team" value="5"/>Toronto Blue Jays<br>
					<input type="radio" name="team" value="6"/>Chicago White Sox<br>
					<input type="radio" name="team" value="7"/>Cleveland Indians<br>
					<input type="radio" name="team" value="8"/>Detroit Tigers<br>
					<input type="radio" name="team" value="9"/>Kansas City Royals<br>
					<input type="radio" name="team" value="10"/>Minnesota Twins<br>
					<input type="radio" name="team" value="11"/>Los Angeles Angels<br>
					<input type="radio" name="team" value="12"/>Oakland Athletics<br>
					<input type="radio" name="team" value="13"/>Seattle Mariners<br>
					<input type="radio" name="team" value="14"/>Texas Rangers<br>
					<input type="radio" name="team" value="15"/>Atlanta Braves<br>
					<input type="radio" name="team" value="16"/>Florida Marlins<br>
					<input type="radio" name="team" value="17"/>New York Mets<br>
					<input type="radio" name="team" value="18"/>Philadelphia Phillies<br>
					<input type="radio" name="team" value="19"/>Washington Nationals<br>
					<input type="radio" name="team" value="20"/>Chicago Cubs<br>
					<input type="radio" name="team" value="21"/>Cincinnati Reds<br>
					<input type="radio" name="team" value="22"/>Houston Astros<br>
					<input type="radio" name="team" value="23"/>Milwaukee Brewers<br>
					<input type="radio" name="team" value="24"/>Pittsburgh Pirates<br>
					<input type="radio" name="team" value="25"/>St. Louis Cardinals<br>
					<input type="radio" name="team" value="26"/>Arizona Diamondbacks<br>
					<input type="radio" name="team" value="27"/>Colorado Rockies<br>
					<input type="radio" name="team" value="28"/>Los Angeles Dodgers<br>
					<input type="radio" name="team" value="29"/>San Diego Padres<br>
					<input type="radio" name="team" value="30"/>San Francisco Giants<br>
					<input type="radio" name="team" value=""/>NONE<br>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save Player"/></td>
			</tr>
		</table>
	</form>
</article>
<?php include 'footer.php'; ?>

