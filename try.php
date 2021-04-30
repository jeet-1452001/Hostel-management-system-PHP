<html>
<head>
<title>Student Details</title>
</head>
<body>
<?php
$DB_host = "localhost";
$DB_user = "root";
$DB_pass = "";
$DB_name = "hostel";
$conn = new mysqli($DB_host, $DB_user, $DB_pass, $DB_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id,roomno,seater,feespm FROM registration";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Room_NO</th><th>Seater</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"]. "</td><td>" . $row["roomno"]. " " . $row["seater"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>