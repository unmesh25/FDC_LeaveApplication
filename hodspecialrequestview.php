<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="head.css">
	<link rel="stylesheet" type="text/css" href="background.css">
	<link rel="stylesheet" type="text/css" href="logoutcss.css">
	<title>HOD REQUEST</title>
</head>
<body>
<div class="grid">
	<div class="item">
		<a href="logout.php" onclick="preventBack()"><h2>Logout</h2></a>
	</div>
</div>
<table border = "1 solid black">
	<tr>
		<td>Faculty Name</td>
		<td>Branch</td>
		<td>Mail id</td>
		<td>Number of Days</td>
		<td>Amount Claimed</td>
		<td>Reason</td>
	</tr>
	<?php
		session_start();
		if($_SERVER['REQUEST_METHOD'] == 'GET')
		{

			$localhost = 'localhost';
			$username = 'root';
			$password = '';
			$db = 'fdc';

			$conn = mysqli_connect($localhost, $username, $password, $db);
			if($conn)
			{
				echo "Connection sucessful";
			}
			else
			{
				echo "Error".mysqli_connect_error();
			}

			$sql = "Select * from fdc_leave_data where Branch = '$_SESSION[branch]' and HOD_Remark = '' and Special_Request = 'Yes'";
			$result = $conn->query($sql);
			if($result->num_rows>0)
			{
				while($row = $result->fetch_assoc())
				{
					$temp = $row['Faculty_Mailid']; 
					echo "<tr><td>".$row['Faculty_Name']."</td>".
					"<td>".$row['Branch']."</td>".
					"<td>".$row['Faculty_Mailid']."</td>".
					"<td>".$row['Number_of_ODs']."</td>".
					"<td>".$row['Amount']."</td>".
					"<td>".$row['Reason']."</td></tr>";
				}
			}


		}
	?>
</table>
</body>
</html>