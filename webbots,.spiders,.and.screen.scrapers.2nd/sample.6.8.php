<?php

$post = array("uploadedfile"=>"@".$full_path_name_of_file);

$ch = curl_init();
curl_setopt($ch,CURLOPT_URL, $form_action_URL;
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
$response = curl_exec($ch);

?>