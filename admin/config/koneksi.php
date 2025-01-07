<?php

$conn = mysqli_connect("localhost", "root", "", "ra_alfathunnisa");

// Check connection
if (mysqli_connect_errno()) {
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
