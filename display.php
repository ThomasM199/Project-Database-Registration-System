<?php
$conn = mysqli_connect("localhost", "root", "secure", "database");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, level, course, keywords, description, lecture, lecture_email FROM project3";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["name"]. "</td><td>" . $row["level"] . "</td><td>"
. $row["course"]. $row["keywords"]. "</td><td>" . $row["description"]. "</td><td>" . $row["lecturer"]. "</td><td>" . $row["lecture_email"]. "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>
