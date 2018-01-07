<?php
session_start();
$user = $_SESSION['user'];
$log = $_SESSION['ifhod'];
$msg="";
require "config/config.php";
if ($log != "log"){
	header ("Location: index.php");
}
if(isset($_POST['submit'])){
$user = $_POST['user'];
$res = mysqli_query($db_handle,"SELECT * FROM users WHERE user='$user' AND branch='IF'");
if(mysqli_num_rows($res)<1)
{
	$msg = "Student doesnt exist or not from IF.";
}
else{

	if(mysqli_query($db_handle,"DELETE FROM users WHERE user='$user'")){
		$msg = "Deleted sucessfully.";
	}
	else{
		$msg = "Wrong Enrollment number.";
	}
}




}

?>
<html>
<title>Delete Student</title>
<div class="wrapper">
<head>
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
  <table><tr><td><h1>Delete Student</h1></td>
         <td width="1000px" align="right"><a href="logout.php" class="logout">Logout</a></td></tr></table>	
	<div id="cssmenu">
<ul>
<li><a  href="ifhod.php">Home</a></li>
<li><a href="ifhod-add-if.php">Add Student</a></li>
<li><a  href="ifhod-del-stud.php">Delete Student</a></li>
<li><a href="ifhod-result.php">See Result</a><li>
<li><a  href="ifhod-stud-msg.php">Students Messages</a></li>
<li><a href="#">Profile</a>
<ul>
		<li><a  href="ifhod-changepass.php">Change Password</a></li>
</ul>
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
h1{color:#FFF;}
.txt_fld{
	padding:5px;
	border:3px solid #09F;
	border-radius:5px;
	}

</style>
</head>

<body>
  <link href="css/stud.css" rel="stylesheet" type="text/css"/>
<br><br>

  <table class="reference" style="width:35%">
    <form action="ifhod-del-stud.php" method="POST">
  	<tr>
      <td>Enrollment No. </td>
      <td> <input type="text" name="user" class="txt_fld" required ></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Delete" class="logout" name="submit"></td>
    </tr>
  </form>
  </table>

  <br><br>
<?php if($msg){ echo "$msg"; } ?>
<table class="reference" style="width:35%">
<tr>
	<th>No</th>
	<th>Enrollment Number</th>
	<th>Action</th>
</tr>
<?php

		$SQL = "SELECT * FROM users WHERE branch='IF' AND user!='admin' AND user!='cmhod' AND user!='ifhod' ORDER BY user ASC ";
		$result = mysqli_query($db_handle,$SQL);
		$i = 1;
		$j = 0;
		while ($db_field = mysqli_fetch_assoc($result))
		{
			$user = $db_field['user'];
			print("<tr><td align = 'center'><b>$i</b></td>");
			print("<td align='center'>$user</td>");
			$j = $i + 1;
			print("<td align='center' width = '70px'><form action='ifhod-del-stud.php' method='POST'><input type='hidden' name='user' value=".$user."><input type='submit' name='submit' value='Delete'></form></tr>");
			$i = $i + 1;
		}
?>
</table>
</body>
</html>
