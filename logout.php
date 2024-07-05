<?php
// if (isset($_SESION['nama'])){
//     header("location:index.php?error-access-failed");
// }
session_start();
session_destroy();
header("location:index.php");
