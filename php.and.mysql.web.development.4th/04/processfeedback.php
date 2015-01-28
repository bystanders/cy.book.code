<?php

	//create short variable names
	$name=trim($_POST['name']);
	$email=trim($_POST['email']);
	$feedback=trim($_POST['feedback']);
	
	if (strlen($email) < 6) {
		echo 'That email address is not valid';
		exit; // force execution of PHP script
	}
	
	//set up some static information
	$email_array = explode('@',	$email);
	if (strtolower($email_array[1]) == "bigcustomer.com") {
		$toaddress = "bob@example.com";	
	} else if (strpos($feedback, 'shop') !== FALSE) {
		$toaddress = "retail@example.com";
	} else if (stristr($feedback, 'delivery')) {
		$toaddress = "fulfillment@example.com";
	} else if (stristr($feedback, 'bill')) {
		$toaddress = "accounts@example.com";
	} else {
		$toaddress = "Mike_Chen@email.lingan.com.cn";//"feedback@example.com";
	}	
	
	$subject = "Feedback from web site";
	
	$mailcontent = "Customer name:".$name."\n".
				   "Customer email:".$email."\n".
				   "Customer comments:\n".$feedback."\n";

	$fromaddress = "From: webserver@example.com";
	
	//invoke mail function to send mail
	mail($toaddress, $subject, $mailcontent, $fromaddress);
				  
?>
<html>
	<head>
		<title>Bob's Auto Parts - Feedback Submitted</title>
	</head>
	<body>
		<h1>Feedback submitted</h1>
		<p>Your feedback (shown below) has been sent.</p>
		<p><?php echo nl2br($mailcontent); ?></p>
	</body>
</html>