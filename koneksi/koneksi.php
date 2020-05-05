<?php
    function open_connection () {
        $hostname   = "localhost";
        $username   = "root";
        $password   = "";
        $dbname     = "akademik";

        $connect = mysqli_connect($hostname, $username, $password, $dbname);
        return $connect;
    }
 ?>