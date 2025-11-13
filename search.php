<?php
// --- Database Connection ---
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "dems"; // ✅ Change if needed

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['query'])) {
  $query = trim($_POST['query']);
  $sql = "SELECT employee_id, first_name, middle_name, last_name 
          FROM employees 
          WHERE CONCAT(first_name, ' ', middle_name, ' ', last_name) LIKE ? 
             OR employee_id LIKE ? 
          LIMIT 10";

  if ($stmt = $conn->prepare($sql)) {
    $like = "%{$query}%";
    $stmt->bind_param("ss", $like, $like);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
        $fullName = $row['last_name'] . ", " . $row['first_name'] . " " . $row['middle_name'];

        // Highlight matching text
        $highlighted = preg_replace(
          "/(" . preg_quote($query, '/') . ")/i",
          "<b>$1</b>",
          htmlspecialchars($fullName)
        );

        echo "<div style='
                padding:2px 4px;
                cursor:pointer;
                border-bottom:1px solid #eee;
                font-size:0.7rem;
                line-height:1.1;
                transition:background 0.2s;
              ' 
              onmouseover=\"this.style.background='#d7e2e6f8'\"
              onmouseout=\"this.style.background='transparent'\"
              onclick='selectEmployee(\"{$row['employee_id']}\")' 
              data-empnum='{$row['employee_id']}'>
              {$highlighted} 
              <span style=\"color:#777; font-size:0.95rem;\">({$row['employee_id']})</span>
            </div>";
      }
    } else {
      echo "<div style='color:#ff0000;  padding:3px; font-size:0.80rem;'>No results found</div>";
    }

    $stmt->close();
  } else {
    echo "<div style='color:red; font-size:0.7rem;'>SQL prepare error: " . htmlspecialchars($conn->error) . "</div>";
  }
}

$conn->close();
?>
