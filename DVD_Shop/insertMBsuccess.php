<?php
require 'conn.php';
$sql_update="INSERT INTO members(mbid,mbname,mblastname,telephone,email) VALUES ('$_POST[mbid]','$_POST[mbname]','$_POST[mblastname]' ,'$_POST[telephone]' ,'$_POST[email]')";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Insert Success <br>";
header("refresh: 1; url=http://localhost/DVD_Shop/mainmenuMB.php");
}

?>