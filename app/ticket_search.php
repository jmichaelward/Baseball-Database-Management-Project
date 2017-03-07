<?php $title = 'Ticket Search'; ?>
<?php include 'header.php'; ?>
<article>
		<p>Select a game and section to find available tickets.</p>
		<form method="POST" action="get_ticket.php">
			<table>
				<tr>
					<td>Select game</td><td>
					<select name="game">
						<!-- TODO: This should be dynamically loaded -->
					<option value="55"/>4/8 @ 3:10pm - Twins vs. Oakland Athletics</option>
					<option value="56"/>4/9 @ 6:10pm - Twins vs. Oakland Athletics</option>
					<option value="57"/>4/10 @ 3:10pm - Twins vs. Oakland Athletics</option>					
					</select></td>
				</tr>
				<tr>
					<td>Select section</td><td>
					<select name="section">
						<!-- TODO: This should be dynamically loaded -->
					<option value="1">Section 1 - $80.00</option>
					<option value="8">Section 8 - $285.00</option>
					<option value="101">Section 101 - $39.00</option>
					<option value="113">Section 113 - $65.00</option>
					<option value="230">Section 230 - $27.00</option>
					<option value="237">Section 237 - $24.00</option>
					<option value="325">Section 325 - $19.00</option>
					</select></td>
				</tr>
				<tr>
					<td></td><td><input type="submit" value="View Available Tickets"/></td>
				</tr>
			</table>
		</form>
</article>
<?php include 'footer.php'; ?>
