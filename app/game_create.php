<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>M</title>
	<link href="/assets/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Game submitted.</h1>
<?php
include_once './src/class.db.php';
$db = DB::get_instance();

$datetime = $_POST['datetime'];
$hteam    = $_POST['hteam'];
$ateam    = $_POST['ateam'];
$stadium  = $_POST['stadium'];
$umpcrew  = $_POST['umpcrew'];

$query = "INSERT INTO games VALUES" .
         "('','$datetime','$hteam','$ateam','$stadium','$umpcrew')";

$result = mysqli_query( $db->connection(), $query );

echo "<p>Thank you for submitting this game to the database.</p>";

$db->disconnect();
?>

<p>Click <a href="game_new.html">here</a> to submit another game.</p>
</body>
</html>