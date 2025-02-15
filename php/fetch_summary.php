<?php
require 'database.php';
$district = $_GET['district'] ?? '';
$year = $_GET['year'] ?? '';

if (empty($district) || empty($year)) {
    echo json_encode(['error' => 'Invalid input.']);
    exit;
}

$sql = "SELECT 
            division,
            COUNT(club_name) AS total_clubs,
            SUM(CASE WHEN YEAR(reg_date) = ? THEN 1 ELSE 0 END) AS reg_in_year,
            SUM(CASE WHEN YEAR(reco_date) = ? THEN 1 ELSE 0 END) AS reco_in_year
        FROM 
            club_register
        WHERE 
            district = ?
        GROUP BY 
            division";

$stmt = $conn->prepare($sql);
$stmt->bind_param("iis", $year, $year, $district);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
while ($row = $result->fetch_assoc()) {
    $row['division'] = $row['division'] . ' ප්‍රාදේශීය ලේකම් කොට්ඨාසය';
    $data[] = $row;
}

$stmt->close();
$conn->close();

echo json_encode($data);
?>
