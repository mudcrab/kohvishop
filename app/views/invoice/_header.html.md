<h1>MTÜ Huumus</h1>
<table width="700" border="0">
	<tr>
		<td valign="top" width="120">
			<strong>Maksja:</strong>
			<br>
			<strong>E-postiaadress:</strong>
			<br>
			<strong>Telefon:</strong>
			<br>
			<strong>Aadress:</strong>
		</td>
		<td valign="top" width="300">
			Eraisik, <%= checkout["customer_name"] %>
			<br>
			<%= checkout["customer_mail"] %>
			<br>
			<%= checkout["customer_phone"] %>
			<br>
			<%= checkout["customer_address"] %>
		</td>
		<td align="right">
			<strong>Arve nr: <big><%= checkout["id"] %></big></strong>
			<br>
			<br>
			<strong>Kuupäev</strong> <%= checkout["date"] %>
			<br>
			Palume arve tasuda 7 päeva jooksul.
			<br>
			<br>
			Tasumise tähtaeg <%= checkout["date_due"] %>
			<br>
			Viivis 0,5 protsenti päevas.
		</td>
	</tr>
</table>
<br>
<table width="700" border="1" cellpadding="3" cellspacing="1">
	<tr>
		<th align="center">jrk. nr.</th>
		<th>kauba nimetus</th>
		<th>kood</th>
		<th align="center">kogus</th>
		<th align="center">hind</th>
		<th align="center">kokku</th>
	</tr>