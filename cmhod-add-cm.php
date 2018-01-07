<?php
session_start();
include 'config/config.php';
$msg="";
$log = $_SESSION['cmhod'];
if($_SESSION['cmhod'] != "log")
{
		header ("Location: index.php");
}
if(isset($_POST['submit'])){

  $user=$_POST['user'];
  $pass=md5($_POST['user']);
	$year = $_POST['year'];
for($i = 0; $i <500 ; $i++)
{
  if(mysqli_query($db_handle,"INSERT INTO users(user,pass,branch,post,year) VALUES('$i','$pass','CM','student','$year')"))
  {
    $msg="Student added sucessfully.";
  }
  else{
    $msg="Student already exists.";
  }
}
}
?>

<html>
<title>Add Student</title>
<div class="wrapper">
<head>
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<table><tr><td><h1>Add Student</h1></td>
<td width="1000px" align="right"><a href="logout.php" class="logout">Logout</a></td></tr></table>
	<div id="cssmenu">
<ul>
<li><a  href="cmhod.php">Home</a></li>
<li><a href="cmhod-add-cm.php">Add Student</a></li>
<li><a  href="cmhod-del-stud.php">Delete Student</a></li>
<li><a href="cmhod-cm-result.php">See Result</a><li>
<li><a  href="cmhod-stud-msg.php">Students Messages</a></li>
<li><a href="#">Profile</a>
		<ul>
				<li><a  href="cmhod-changepass.php">Change Password</a></li>
				<li><a  href="logout.php">Logout</a></li>
		</ul>
</li>
</ul>
</div>
  <link rel="stylesheet" href="css/normalize.css"><br><br>
<style>
.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column;
  width: 97%;
  min-height: 97%;
  padding: 20px;
  background: rgba(4, 40, 68, 0.85);
  color:white;
  font-size: 14px;
}
form{
  text-align: left;
  align-items: center;
  color:white;
}
input,select{
  color: black;
}
.txt_fld{
	padding:5px;
	border:3px solid #09F;
	border-radius:5px;
	}
h1{color:#FFF;}	
</style>
</head>

<link href="css/stud.css" rel="stylesheet" type="text/css"/>
<body>
	<br><br><br><br><br><br>
	<form action="cmhod-add-cm.php" method="POST">
	<table class="reference" style="width:100%">
		<tr>
			<td>Enrollment no </td>
			<td><input type="text" class="txt_fld" name="user" class="txt_fld" required > </td>
		</tr>
		<tr>
			<td>Year </td>
			<td> <select name="year" class="txt_fld">
					  <option value="FY">FY</option>
					  <option value="SY">SY</option>
					  <option value="TY">TY</option>
					 </select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" value="submit" class="logout" name="submit">
			</td>
	</tr>
	</form>
	</table>
	<br>
	  <b><i><?php print "$msg"; ?></i></b>
	</div>
</body>
</html>
