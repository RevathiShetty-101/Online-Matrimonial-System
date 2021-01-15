<?php if(!isset($_SESSION)) { session_start(); } ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table style="width:100%">
<tr><td style="font-size:28px">Admin Links</td></tr>

<?php if($_SESSION["usertype"]=="Admin")
{?>

<tr><td><a href="adduser.php">Add User</a></td></tr>
<tr><td><a href="updateuser.php">Update User</a></td></tr>
<tr><td><a href="deleteuser.php">Delete User</a></td></tr>

<?php }?>

<?php if($_SESSION["usertype"]=="Admin")
{?>
<tr><td><a href="deleteprofile.php">Delete Profile</a></td></tr>

<?php }?>

<tr><td><a href="viewprofile.php">View Profile</a></td></tr>

<?php if($_SESSION["usertype"]=="Admin")
{?>
<?php }?>

</table>


</body>
</html>