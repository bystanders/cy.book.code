<?php

include("LIB_parse.php"):
include("LIB_http.php");

$web_page = http_get($target = "http://www.cnn.com", $referer = "");

$noformat = remove($web_page['FILE'], "<script", "</script>");

$unformatted = strip_tags($only_text);

$noformat = str_replace("\t", "", $noformat);
$noformat = str_replace("&nbsp;", "", $noformat);
$noformat = str_replace("\n", "", $noformat);
echo $noformat;

?>