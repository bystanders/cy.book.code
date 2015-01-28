<?php

include("LIB_parse.php"):
include("LIB_http.php");

$web_page = http_get($target = "http://www.nostarch.com", $referer = "");
$meta_tag_array = parse_array($web_page['FILE'], "<img", ">");

for($xx = 0; $xx < count($meta_tag_array); $xx++){
  $name = get_attribute($meta_tag_array[$xx], $attribute="src");
  echo $name."\n";
}

?>