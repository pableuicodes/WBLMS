<?php
header('Content-Type: application/json');
require_once 'classes/Database.php';  // Adjust if needed

$db = new Database();
$conn = $db->connect();

$q = isset($_GET['q']) ? trim($_GET['q']) : '';

if ($q === '') {
    echo json_encode([]);
    exit;
}

$sql = "SELECT employee_id, first_name, middle_name, last_name 
        FROM employees 
        WHERE CONCAT(first_name, ' ', middle_name, ' ', last_name) LIKE ? 
           OR CONCAT(last_name, ', ', first_name, ' ', middle_name) LIKE ? 
           OR first_name LIKE ? 
           OR middle_name LIKE ? 
           OR last_name LIKE ?
        LIMIT 10";

$stmt = $conn->prepare($sql);
$like = "%$q%";
$stmt->bind_param("sssss", $like, $like, $like, $like, $like);
$stmt->execute();
$result = $stmt->get_result();

$employees = [];

while ($row = $result->fetch_assoc()) {
    $fullname = strtoupper("{$row['last_name']}, {$row['first_name']} {$row['middle_name']}");
    $employees[] = [
        'empNum' => $row['empNum'],
        'fullname' => $fullname
    ];
}

echo json_encode($employees);
?>
