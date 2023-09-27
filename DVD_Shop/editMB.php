<?php
if(!isset($_GET['mbid'])){
    header("refresh: 0; url=http://localhost/DVD_Shop/mainmenuMB.php");
}
require 'conn.php';
$sql = "SELECT * FROM members WHERE mbid='$_GET[mbid]'";
$result = $conn->query($sql);
$row = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit</title>
</head>

<body class="container">
<form id="form1" name="form1" method="post" action="editMBsuccess.php">
<table>
  <tr>
    <td><label for="mbid">ID</label></td>
    <td><input type="text" name="mbid" id="mbid" value="<?=$row['mbid'];?>" disabled/></td>
  </tr>
  <tr>
    <td><label for="mbname">ชื่อ</label></td>
    <td>
      <input type="text" name="mbid" id="mbid" value="<?=$row['mbid'];?>" hidden>
      <input type="text" name="mbname" id="mbname" value="<?=$row['mbname'];?>" />
    </td>
  </tr>
  <tr>
    <td><label for="mblastname">นามสกุล</label></td>
    <td><input type="text" name="mblastname" id="mblastname" value="<?=$row['mblastname'];?>" /></td>
  </tr>
  <tr>
    <td><label for="telephone">เบอร์โทรศัพท์</label></td>
    <td><input type="text" name="telephone" id="telephone" value="<?=$row['telephone'];?>" /></td>
  </tr>
  <tr>
    <td><label for="email">E-mail</label></td>
    <td><input type="text" name="email" id="email" value="<?=$row['email'];?>" /></td>
  </tr>
</table>
<div>
  <input type="submit" class="btn btn-success" value="บันทึก">
  <a class="btn btn-success" href='mainmenuMB.php'>Home</a>
</div>
</form>
</body>

</html>