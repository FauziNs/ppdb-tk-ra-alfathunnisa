<?php

include "admin/config/koneksi.php";
include "pondasi/alert.php";
session_start();

// Validasi input POST
$nama_siswa = isset($_POST["nama_siswa"]) ? $_POST["nama_siswa"] : null;
$tempatlahir = isset($_POST["tempatlahir"]) ? $_POST["tempatlahir"] : null;
$tgl_lahir = isset($_POST["tgl_lahir"]) ? $_POST["tgl_lahir"] : null;
$jenis_kel = isset($_POST["jenis_kel"]) ? $_POST["jenis_kel"] : null;
$nm_ayah = isset($_POST["nm_ayah"]) ? $_POST["nm_ayah"] : null;
$nm_ibu = isset($_POST["nm_ibu"]) ? $_POST["nm_ibu"] : null;
$job_ayah = isset($_POST["job_ayah"]) ? $_POST["job_ayah"] : null;
$kampung = isset($_POST["kampung"]) ? $_POST["kampung"] : null;
$rtrw = isset($_POST["rtrw"]) ? $_POST["rtrw"] : null;
$desa = isset($_POST["desa"]) ? $_POST["desa"] : null;
$kecamatan = isset($_POST["kecamatan"]) ? $_POST["kecamatan"] : null;
$no_ortu = isset($_POST["no_ortu"]) ? $_POST["no_ortu"] : null;

// Pastikan semua variabel diisi
if ($nama_siswa && $tempatlahir && $tgl_lahir && $jenis_kel && $nm_ayah && $nm_ibu && $job_ayah && $kampung && $rtrw && $desa && $kecamatan && $no_ortu) {
    // Menggunakan prepared statement untuk keamanan
    $sql = "INSERT INTO ppdb (nama_siswa, tempat, tgl_lahir, jenis_kel, nm_ayah, nm_ibu, 
      job_ayah, kampung, rtrw, desa, kecamatan, no_ortu) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_prepare($conn, $sql);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "ssssssssssss", $nama_siswa, $tempatlahir, $tgl_lahir, $jenis_kel, $nm_ayah, $nm_ibu, $job_ayah, $kampung, $rtrw, $desa, $kecamatan, $no_ortu);
        $hasil = mysqli_stmt_execute($stmt);
        
        if ($hasil) {
            $last_id = mysqli_insert_id($conn);
            $_SESSION['current_id'] = $last_id;
            echo "<script>alert('Anda Berhasil Mendaftar');document.location='kartu_daftar.php'</script>";
        } else {
            $error_message = mysqli_error($conn);
            echo "<script>alert('Anda Gagal Mendaftar: $error_message');document.location='pendaftaran.php'</script>";
        }

        mysqli_stmt_close($stmt);
    } else {
        $error_message = mysqli_error($conn);
        echo "<script>alert('Prepared statement failed: $error_message');document.location='pendaftaran.php'</script>";
    }
} else {
    echo "<script>alert('Pastikan semua field diisi');document.location='pendaftaran.php'</script>";
}

mysqli_close($conn);
?>
