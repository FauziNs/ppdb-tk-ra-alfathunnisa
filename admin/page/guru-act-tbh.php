<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header('location:../index.php');
} else {
    $username = $_SESSION['admin'];
}

require_once("../config/koneksi.php");
$query = mysqli_query($conn, "SELECT * FROM admin WHERE username='$username'");
$hasil = mysqli_fetch_array($query);

$a = $_POST['nama'];
$b = $_POST['mapel'];
$c = $_POST['jabatan'];
$d = $_POST['email'];

$ekstensi_diperbolehkan  = array('png', 'jpg', 'jpeg');
$nama = $_FILES['foto']['name'];
$x = explode('.', $nama);
$ekstensi = strtolower(end($x));
$ukuran = $_FILES['foto']['size'];
$file_tmp = $_FILES['foto']['tmp_name'];

if (in_array($ekstensi, $ekstensi_diperbolehkan) === true) {
    if ($ukuran < 10440070) {
        move_uploaded_file($file_tmp, '../foto/guru/' . $nama);



        $query = mysqli_query($conn, "INSERT INTO guru (foto,nama,mapel,jabatan,email) values('$nama','$a','$b','$c','$d')");
        if ($query) {
            header("location:guru.php");
        } else {
            echo 'GAGAL MENGUPLOAD GAMBAR';
        }
    } else {
        echo 'UKURAN FILE TERLALU BESAR';
    }
} else {
    echo 'EKSTENSI FILE YANG DI UPLOAD TIDAK DI PERBOLEHKAN';
}
