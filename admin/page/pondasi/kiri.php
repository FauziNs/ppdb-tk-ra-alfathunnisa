<?php
$sql = mysqli_query($conn, "SELECT * FROM moto");
$b = mysqli_fetch_assoc($sql);

$s = mysqli_query($conn, "SELECT * FROM profil");
$l = mysqli_fetch_assoc($s);

$v = mysqli_query($conn, "SELECT * FROM visimisi");
$m = mysqli_fetch_assoc($v);


$p = mysqli_query($conn, "SELECT * FROM ppdb");
$n = mysqli_fetch_assoc($p);
?>
<aside class="main-sidebar" style="background-color: yellow;">
    <!-- sidebar-->
    <section class="sidebar">

        <!-- sidebar menu-->
        <ul class="sidebar-menu" data-widget="tree" >
            <li class="header nav-small-cap" href="index.php">HALAMAN ADMIN</li>


            <li class="active" >
                <a href="moto.php?id=<?php echo $b['id'] ?>" style="background-color: yellow;">
                    <i class="mdi mdi-comment-text"></i>
                    <span>Moto</span>
                </a>
            </li>

            <li class="active">
                <a href="profil.php?id=<?php echo $l['id'] ?>" style="background-color: yellow;">
                    <i class="mdi mdi-library"></i>
                    <span>Profil</span>
                </a>
            </li>

            <li class="header nav-small-cap">PAGE</li>
            <li class="active">
                <a href="pendaftaran.php" style="background-color: yellow;">
                    <i class="mdi mdi-file-plus"></i>
                    <span>Data Pendaftar</span>
                </a>
            </li>
            <li class="active">
                <a href="visimisi.php?id=<?php echo $m['id'] ?>" style="background-color: yellow;">
                    <i class="mdi mdi-tag-plus"></i>
                    <span>Visi dan Misi</span>
                </a>
            </li>
        </ul>
    </section>
</aside>