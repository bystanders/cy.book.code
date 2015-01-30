<?php

include("LIB_http.php");

$action = "http://www.schrenk.com/search.php?term=hello&sort=up";
$method = "GET";
$ref = "";
$response = http($target = $action, $ref, $method, $data_array="", EXCL_HEAD);

?>