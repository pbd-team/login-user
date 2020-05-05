<?php
    session_start();

    if (!isset($_SESSION['username'])) {
        header("location:login.php");
    }
 ?>

 <h2>
    <?php
        if ($_SESSION['jenis_user'] == '0') {
            $ju = 'User-Client';
        } else {
            $ju = 'User-Admin';
        }
        echo $ju.'<hr>';
     ?>
 </h2>

<h3>
    <?php
        echo "Welcome ".$_SESSION['username']." | <a href=sistem.php?op=out>Log Out</a>";
     ?>
</h3>