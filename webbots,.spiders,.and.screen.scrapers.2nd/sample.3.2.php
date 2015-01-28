<?php

$target = "http://www.WebbotsSpidersScreenScrapers.com/hello_world.html";
$downloaded_page_array = file($target);

for ($xx=0; $xx < count($downloaded_page_array); $xx++)
{
    echo $downloaded_page_array[$xx];    
}

?>