<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $reg_id = filter_var($_POST['reg_id'], FILTER_SANITIZE_STRING);
    $dis = filter_var($_POST['dis'], FILTER_SANITIZE_STRING);
    $divi = filter_var($_POST['divi'], FILTER_SANITIZE_STRING);
    $club_name = filter_var($_POST['club_name'], FILTER_SANITIZE_STRING);
    $village = filter_var($_POST['village'], FILTER_SANITIZE_STRING);
    $c_name = filter_var($_POST['c_name'], FILTER_SANITIZE_STRING);
    $sec_name = filter_var($_POST['sec_name'], FILTER_SANITIZE_STRING);
    $voli = filter_var($_POST['voli'], FILTER_SANITIZE_STRING);
    $net = filter_var($_POST['net'], FILTER_SANITIZE_STRING);
    $nb = filter_var($_POST['nb'], FILTER_SANITIZE_STRING);
    $foot = filter_var($_POST['foot'], FILTER_SANITIZE_STRING);
    $teni = filter_var($_POST['teni'], FILTER_SANITIZE_STRING);
    $bat = filter_var($_POST['bat'], FILTER_SANITIZE_STRING);
    $wik = filter_var($_POST['wik'], FILTER_SANITIZE_STRING);
    $eq = filter_var($_POST['eq'], FILTER_SANITIZE_STRING);
    $reg_date = filter_var($_POST['reg_date'], FILTER_SANITIZE_STRING);
    $reco_date = filter_var($_POST['reco_date'], FILTER_SANITIZE_STRING);

    $stmt = $conn->prepare("INSERT INTO club_register (reg_id, district, division, village, club_name, chair_name, sec_name, volleyball, net, nb, football, tenis, bat, wicket, equipments, reg_date, reco_date) 
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("sssssssssssssssss", $reg_id, $dis, $divi, $village,$club_name, $c_name, $sec_name, $voli, $net, $nb, $foot, $teni, $bat, $wik, $eq, $reg_date, $reco_date);

    if ($stmt->execute()) {
        header("Location: /sports/form.html?success=1");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
