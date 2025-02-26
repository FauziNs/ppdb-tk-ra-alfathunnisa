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

$que = mysqli_query($conn, "SELECT * FROM admin ");
$hasi = mysqli_fetch_array($que);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../image/logorafix.png">

    <title>Halaman Admin</title>

    <!-- Bootstrap 4.0-->
    <link rel="stylesheet" href="../../assets/vendor_components/bootstrap/dist/css/bootstrap.css">

    <!-- Bootstrap extend-->
    <link rel="stylesheet" href="../css/bootstrap-extend.css">

    <!-- theme style -->
    <link rel="stylesheet" href="../css/master_style.css">

    <!-- Superieur Admin skins -->
    <link rel="stylesheet" href="../css/skins/_all-skins.css">

    <!-- daterange picker -->
    <link rel="stylesheet" href="../../assets/vendor_components/bootstrap-daterangepicker/daterangepicker.css">

    <!-- Morris charts -->
    <link rel="stylesheet" href="../../assets/vendor_components/morris.js/morris.css">

    <!-- Data Table-->
    <link rel="stylesheet" type="text/css" href="../../assets/vendor_components/datatable/datatables.min.css" />



</head>

<body class="hold-transition skin-info-light sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="index.php" class="logo">
                <!-- mini logo -->
                <div class="logo-mini">
                    <span class="light-logo"><img src="../../image/logo_tk_hd.png" width="20px" height="20px" alt="logo"></span>
                    <span class="dark-logo"><img src="../../image/logorafix.png" width="50px" height="50px" alt="logo">ADMIN RA</span>
                </div>
                <!-- logo-->

            </a>
            <!-- Header Navbar -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <div>
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                </div>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">


                        <!-- User Account-->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="../../image/guru.png" class="user-image rounded-circle" alt="User Image">
                            </a>
                            <ul class="dropdown-menu animated flipInY">
                                <!-- User image -->

                                <!-- Menu Body -->
                                <li class="user-body">

                                    <a class="dropdown-item" href="admin.php"><i class="ion-plus-circled"></i> Menambahkan Admin RA</a>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li class="user-body">

                                    <a class="dropdown-item" href="keluar.php"><i class="ion-log-out"></i> Keluar</a>
                                    <div class="dropdown-divider"></div>
                                </li>
                            </ul>
                        </li>


                        <!-- Pesan Pesan -->


                        <!-- Control Sidebar -->

                    </ul>
                </div>
            </nav>
        </header>