<?php
require 'conn.php';
$sql_update="INSERT INTO products(pdid,pdname,price,date,detail) VALUES ('$_POST[pdid]','$_POST[pdname]','$_POST[price]' ,'$_POST[date]' ,'$_POST[detail]')";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Insert Success <br>";
header("refresh: 1; url=http://localhost/DVD_Shop/mainmenu.php");
}

?>