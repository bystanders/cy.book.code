<?php

include("LIB_parse.php");

$string = "The quick brown fox";

$parsed_text = split_string($string, "quick", BEFORE, INCL);
//$parsed_text = "The quick"

$parsed_text = split_string($string, "quick", AFTER, EXCL);
//$parsed_text = "brown fox"

?>