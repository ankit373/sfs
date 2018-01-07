<?php
$servername = "localhost";
$username = "root";
$password = "";
$db= "sfs";
$db_handle = mysqli_connect($servername, $username, $password,$db);

$db_found = mysqli_select_db($db_handle,$db);


if (!$db_found) {
	die("DATABASE not found!");
}

?>
