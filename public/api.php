<?php
$reply = ["hello" => "world"];
header("Content-Type: application/json");
foreach (getallheaders() as $name => $value){
	echo "$name: $value\n";
}
echo json_encode($reply);