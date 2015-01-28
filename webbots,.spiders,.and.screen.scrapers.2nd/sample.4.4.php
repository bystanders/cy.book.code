<?php

include("LIB_parse.php"):
include("LIB_http.php");

$web_page = http_get($target = "http://www.nostarch.com", $referer = "");

$title_incl = return_between($web_page['FILE'], "<title>", "</title>", INCL);

$title_excl = return_between($web_page['FILE'], "<title>", "</title>", EXCL);

echo "title_incl = ".$title_incl;
echo "\n";
echo "title_excl = ".$title_excl;

?>