<?php
require 'conn.php';
$sql_update="UPDATE products SET pdname='$_POST[pdname]',price='$_POST[price]' ,date='$_POST[date]' ,detail='$_POST[detail]' WHERE pdid='$_POST[pdid]' ";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Edit Success <br>";
header("refresh: 1; url=http://localhost/DVD_Shop/mainmenu.php");
}

?>