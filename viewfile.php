<?php

$dbh = new PDO("mysql:host=localhost;dbname=fdc","root","");
$mail = isset($_GET['id']) ? $_GET['id'] : "";
$stat = $dbh->prepare("Select * from leave_data_files where Email = ?");
$stat->bindParam(1,$mail);
$stat->execute();
$row = $stat->fetch();
header("Content-Type:".$row['file_mime']);
echo $row['file_data'];
?>