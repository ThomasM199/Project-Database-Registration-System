<!DOCTYPE html>
<html>
<head>
<title>Table with database</title>
<style>

table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #588c7e;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}

</style>
</head>
<body>
<table>
<tr>
	<th>Name</th>
	<th>Level</th>
	<th>Course</th>
	<th>Keywords</th>
	<th>Description</th>
	<th>Lecturer</th>
	<th>Lecture Email</th>
</tr>

<?php
$conn = mysqli_connect("localhost", "root", "", "database");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, level, course, keywords, description, lecturer, lecture_email FROM project";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["name"]. "</td><td>" . $row["level"] . "</td><td>"
. $row["course"]. . $row["keywords"]. "</td><td>" . $row["description"]. "</td><td>" . $row["lecturer"]. "</td><td>" . $row["lecture_email"]. "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>