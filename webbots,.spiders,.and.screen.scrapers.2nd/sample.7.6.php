<?php

include("LIB_mysql.php");

$image_id = $_GET['img_id'];

$sql = "select IMAGE from table where IMAGE_ID = '".$image_id."'";
list($img) = exe_sql(DATABASE, $sql);

header("Content-type: image/jpeg");
echo base64_decode($img);
exit;

?>