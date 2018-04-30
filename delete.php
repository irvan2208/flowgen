<?php

$id = $_GET['id'];

include 'koneksi.php';
if ($id) {
	$sql = "DELETE FROM flowchart where id=".$id;
	if ($conn->query($sql) === TRUE) {
	    echo $id;
	} else {
	    echo "Error updating record: " . $conn->error;
	}
}
$conn->close();
header('Location: index.php');