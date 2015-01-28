<html>
	<body>
		<table border="0" cellpadding="3">
			<tr>
				<th bgcolor="#CCCCCC" align="center">Distance</td>
				<th bgcolor="#CCCCCC" align="center">Cost</td>
			</tr>
			<?php
				$distance = 50;
				while ($distance <= 250) {
					echo "<tr>
						  <td align=\"right\">".$distance."</td>
						  <td align=\"right\">".($distance/10)."</td>
						  </tr>\n";
					$distance += 50;
				}
			?>
		</table>
	</body>
</html>