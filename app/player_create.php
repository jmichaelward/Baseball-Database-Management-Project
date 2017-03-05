<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>MLB Player Submitted</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>MLB player submitted.</h1>
<?php
include_once './src/class.db.php';
$db = DB::get_instance();

$fname    = $_POST['fname'];
$lname    = $_POST['lname'];
$position = $_POST['position'];
$team     = $_POST['team'];

$query = "INSERT INTO players VALUES" .
         "('','$fname','$lname','$position','$team')";

$result = mysqli_query( $db->connection(), $query );

echo "<p>Thank you for submitting $fname $lname to the database.</p>";

$db->disconnect();
?>

<p>Click <a href="player_new.php">here</a> to submit another player.</p>
</body>
</html>