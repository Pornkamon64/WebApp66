<?php
if(!isset($_GET['pdid'])){
    header("refresh: 0; url=http://localhost/DVD_Shop/mainmenu.php");
}
require 'conn.php';
$sql = "SELECT * FROM products WHERE pdid='$_GET[pdid]'";
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
<form id="form1" name="form1" method="post" action="editsuccess.php">
<table>
  <tr>
    <td><label for="pdid">ID</label></td>
    <td><input type="text" name="pdid" id="pdid" value="<?=$row['pdid'];?>" disabled/></td>
  </tr>
  <tr>
    <td><label for="pdname">ชื่อเรื่อง</label></td>
    <td>
      <input type="text" name="pdid" id="pdid" value="<?=$row['pdid'];?>" hidden>
      <input type="text" name="pdname" id="pdname" value="<?=$row['pdname'];?>" />
    </td>
  </tr>
  <tr>
    <td><label for="price">ราคา</label></td>
    <td><input type="text" name="price" id="price" value="<?=$row['price'];?>" /></td>
  </tr>
  <tr>
    <td><label for="date">วันที่เข้าฉาย</label></td>
    <td><input type="date" name="date" id="date" value="<?=$row['date'];?>" /></td>
  </tr>
  <tr>
    <td><label for="detail">เรื่องย่อ</label></td>
    <td><textarea name="detail" id="detail" cols="30" rows="10"><?=$row['detail'];?></textarea></td>
  </tr>
</table>
<div>
  <input type="submit" class="btn btn-success" value="บันทึก">
  <a class="btn btn-success" href='mainmenu.php'>Home</a>
</div>
</form>
</body>

</html>