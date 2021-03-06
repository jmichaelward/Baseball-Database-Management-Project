<?php $title = 'Umpire Assignment Search'; ?>
<?php include 'header.php'; ?>
<article>
	<p>Select a date and crew to find game assignment.</p>
	<form method="POST" action="get_assignment.php">
		<table>
			<tr>
				<td>Enter date (YYYY-MM-DD)</td>
				<td><input type="text" name="date"></td>
			</tr>
			<tr>
				<td>Select crew</td>
				<td>
					<select name="crew">
						<!-- TODO: Populate this dynamically from a database query -->
						<option value="1">Crew 1 - Davis/Gibson/Hohn/Holbrook</option>
						<option value="2">Crew 2 - Danley/DeMuth/Eddings/Nauert</option>
						<option value="3">Crew 3 - Hudson/McClelland/Barrett/Runge</option>
						<option value="4">Crew 4 - Hirschbeck/Bell/Diaz/Scott</option>
						<option value="5">Crew 5 - T. Welke/Reynolds/DiMuro/Fletcher</option>
						<option value="6">Crew 6 - Iassogna/Scott/Meals/Bucknor</option>
						<option value="7">Crew 7 - Schrieber/Fairchild/West/Hernandez</option>
						<option value="8">Crew 8 - Emmel/Drake/Darling/Dreckman</option>
						<option value="9">Crew 9 - B. Welke/Tschida/Nelson/Foster</option>
						<option value="10">Crew 10 - Wolf/Cousins/Joyce/Kulpa</option>
						<option value="11">Crew 11 - Barksdale/Cederstrom/Culbreth/Johnson</option>
						<option value="12">Crew 12 - Wendelstedt/Knight/Layne/Davidson</option>
						<option value="13">Crew 13 - Randazzo/Bellino/Gorman/Vanover</option>
						<option value="14">Crew 14 - Cooper/Carlson/Timmons/Kellogg</option>
						<option value="15">Crew 15 - Miller/Cuzzi/Hoye/Hallion</option>
						<option value="16">Crew 16 - Everitt/Wegner/Guccione/Winters</option>
						<option value="17">Crew 17 - Rapuano/O'Nora/Marquez/Hickox</option>

					</select></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="View Assignment"/></td>
			</tr>
		</table>
	</form>
</article>
<?php include 'footer.php'; ?>
