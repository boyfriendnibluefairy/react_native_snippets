<!-- filename: 22_define_function.php -->

<?php
    /* const keyword cannot be used inside a conditional statement. To define a constant inside a conditional statement, we use define() */
    $isGreyjoy = true;
    if ($isGreyjoy) {
        define("SAYING", "What is dead may never die.");
    } else {
        define("SAYING", "Fire and Blood.");
    }

    echo SAYING;
?>