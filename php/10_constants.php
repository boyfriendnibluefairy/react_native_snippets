<!-- filename: 10_constants.php -->

<?php
    // CONSTANTS
    // Variables require dollar sign.
    // Constants do not require dollar sign.
    echo "</br></br></br>";
    $completeName = "Aegon Targaryen";
    // Variable values can be changed.
    $completeName = 99;
    var_dump($completeName);

    // By convention, we use all caps for constants. Predefined constants in PHP start with "PHP_".
    echo "</br>";
    const COMPLETE_NAME = "Helaena Targaryen";
    echo COMPLETE_NAME;
?>