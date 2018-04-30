<?php

$id = $_POST['id'];
$nama = $_POST['name'];
$data = $_POST['data'];

include 'koneksi.php';
if ($id) {
	$sql = "UPDATE flowchart SET name='".$nama."', data=$data WHERE id=".$id;

	if ($conn->query($sql) === TRUE) {
	    echo $id;
	} else {
	    echo "Error updating record: " . $conn->error;
	}
}else{
	$sql = "INSERT INTO flowchart (name, data) VALUES ('".$nama."', $data)";

	if ($conn->query($sql) === TRUE) {
	    echo $conn->insert_id;
	} else {
	    echo "Error updating record: " . $conn->error;
	}

}
$conn->close();