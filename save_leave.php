<?php
header('Content-Type: text/plain');

$host = "localhost";
$user = "root";
$pass = "";
$db = "dems";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Database connection failed: " . $conn->connect_error);

$data = json_decode(file_get_contents("php://input"), true);
if (!$data || !is_array($data)) die("Invalid input.");

$stmt = $conn->prepare("INSERT INTO tbl_leavecard 
(empNum, lc_dateperiodStart, lc_dateperiodEnd, lc_type, lc_noOfDays, lc_absenceStat, lc_pvpDays, lc_remarks, lc_datetimeAdded)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())");

if (!$stmt) {
  die("Prepare failed: " . $conn->error);
}

foreach ($data as $row) {
  $noOfDays = is_numeric($row['lc_noOfDays']) ? (float)$row['lc_noOfDays'] : 0;
  $pvpDays = is_numeric($row['lc_pvpDays']) ? (float)$row['lc_pvpDays'] : 0;

  $stmt->bind_param("ssssdsds",
    $row['empNum'],
    $row['lc_dateperiodStart'],
    $row['lc_dateperiodEnd'],
    $row['lc_type'],
    $noOfDays,
    $row['lc_absenceStat'],
    $pvpDays,
    $row['lc_remarks']
  );

  if (!$stmt->execute()) {
    echo "❌ Error saving record for {$row['empNum']}: " . $stmt->error . "\n";
  }
}

$stmt->close();
$conn->close();

echo "✅ Leave records successfully saved to database with PVP details.";
?>
