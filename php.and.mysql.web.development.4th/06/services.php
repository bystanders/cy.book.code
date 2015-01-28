<?php
	require("page.inc");
	
	/**
	 * 
	 */
	class Servicepage extends Page {

		private $row2buttons = array("Re-engineering" 		=>	"reengineering.php", 
									 "Standards Compliance"	=>	"standards,php", 
									 "Buzzword Compliance"	=>	"buzzword.php", 
									 "Mission Statements"	=>	"mission.php");
									 
		function __construct($argument) {
			
		}
		
		public function Display()
		{
			echo "<html>\n<head>\n";
			$this->DisplayTitle();
			$this->DisplayKeywords();
			$this->DisplayStyles();
			echo "</head>\n<body>\n";
			$this->DisplayHeader();
			$this->DisplayMenu($this->buttons);
			$this->DisplayMenu($this->row2buttons);
			echo $this->content;
			$this->DisplayFooter();
			echo "</body>\n</html>\n";
		}
	}
	
	$services = new Servicepage();
	
	$services->content = "<p>At TLA Consulting, we offer a numberof services. 
							Perhaps the productivity of your employees would improve 
							if we re-engineered your business. Maybe all your business needs 
							is a fresh mission statement, or a new batch of buzzwords.</p>";
							
	$services->Display();
	
?>