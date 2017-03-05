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

$db       = DB::get_instance();
$datetime = filter_input( INPUT_POST, 'datetime', FILTER_SANITIZE_STRING );
$hteam    = filter_input( INPUT_POST, 'hteam', FILTER_SANITIZE_STRING );
$ateam    = filter_input( INPUT_POST, 'ateam', FILTER_SANITIZE_STRING );
$stadium  = filter_input( INPUT_POST, 'stadium', FILTER_SANITIZE_STRING );
$umpcrew  = filter_input( INPUT_POST, 'umpcrew', FILTER_SANITIZE_STRING );
$query    = "INSERT INTO games VALUES ('', '$datetime', '$hteam', '$ateam', '$stadium', '$umpcrew')";
$result   = mysqli_query( $db->connection(), $query );

echo "<p>Thank you for submitting this game to the database.</p>";

$db->disconnect();
?>

<p>Click <a href="game_new.php">here</a> to submit another game.</p>
</body>
</html>