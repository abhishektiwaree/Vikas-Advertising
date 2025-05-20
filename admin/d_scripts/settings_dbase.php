<?php
	date_default_timezone_set("Asia/Kolkata");
	$db = mysqli_connect("p:localhost", "root", "mysql", "vikas_adv");
	if(!$db){
		die("Error 1 : Contact Administrator.");
	}
	//It's recommended to include the simplified version of the code above in your PHP script if you're working with text data in a MySQL database. This helps ensure that your application handles characters from different languages and scripts correctly.
	// This helps ensure that data is stored, retrieved, and displayed correctly regardless of the language or script used.

	mysqli_query($db, 'SET character_set_results=utf8'); 
	mysqli_query($db, 'SET names utf8'); 
	mysqli_query($db, 'SET character_set_client=utf8'); 
	mysqli_query($db, 'SET character_set_connection=utf8'); 
	mysqli_query($db, 'SET character_set_results=utf8'); 
	mysqli_query($db, 'SET collation_connection=utf8_general_ci'); 
	

function execute_query($query){
	global $db;
	$result = mysqli_query($db, $query);
	return $result;
}

function insert_id($db=''){
	global $db;
	return mysqli_insert_id($db);
}


?>