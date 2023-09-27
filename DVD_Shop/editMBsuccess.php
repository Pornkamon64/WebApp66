<?php
require 'conn.php';
$sql_update="UPDATE members SET mbname='$_POST[mbname]',mblastname='$_POST[mblastname]' ,telephone='$_POST[telephone]' ,email='$_POST[email]' WHERE mbid='$_POST[mbid]' ";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Edit Success <br>";
header("refresh: 1; url=http://localhost/DVD_Shop/mainmenuMB.php");
}

?>