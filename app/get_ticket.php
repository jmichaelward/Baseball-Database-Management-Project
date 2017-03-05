<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Available Tickets
	</title>
	<style type="text/css">
		body {
			background-color: white;
		}
		
		#container {
			width: 800px;
			margin: 0 auto;
		}
		
		table {
			background-color: beige;
			border: 2px solid black;
			padding: 10px;
			width: 100%;
		}
		
		th {
			text-align: left;
		}
		
		td, th {
			vertical-align: top;
			padding: 1px;
		}
	</style>
</head>
<body>
<div id="container">
				<h1>Search Results</h1>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$game = $_POST['game'];
					$section = $_POST['section'];
					
					$query = "SELECT * FROM gameschedule
					WHERE game_id = '$game'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "Available tickets in Section $section" . "<br>";
						echo $row['awayteam'] . " Vs. " . $row['hometeam'] . " at " . $row['stad_name'] . "<br>";
						echo $row['game_datetime'];
					}
					
					mysqli_close($dbc);
				?>
		<table>
			<th>Section</th>
			<th>Row</th>
			<th>Seat</th>
			<th>Ticket Price</th>
				<?php
					$dbc = mysqli_connect('localhost','root','root','baseball');
					
					$game = $_POST['game'];
					$section = $_POST['section'];
					
					$query = "SELECT games.game_id, section_no, row_no, seat_no, ticket_price
					FROM tickets INNER JOIN games
					ON tickets.game_id = games.game_id RIGHT OUTER JOIN seats
					ON tickets.seat_id = seats.seat_id
					WHERE cust_id IS NULL
					AND section_no = '$section'
					AND tickets.game_id = '$game'";
					
					$result = mysqli_query($dbc, $query);
					
					while ($row = mysqli_fetch_array($result)) {
						echo "\n<tr><td>" . $row['section_no'] . "</td>";
						echo "<td>" . $row['row_no'] . "</td>";
						echo "<td>" . $row['seat_no'] . "</td>";
						echo "<td>" . $row['ticket_price'] . "</td>";
					}
					mysqli_close($dbc);
				?>
		</table>
		
		<p><a href="ticket_search.html">Perform another search.</a></p>
</div>
</body>
</html>