<!-- filename: 21_predefined_constants.php -->

<?php
    /* Predefined constants are readily availabe in php. No need to include their libraries in the source file. */
    echo PHP_VERSION . "</br>";
    echo PHP_INT_MAX . "</br>";
    echo PHP_INT_MIN . "</br>";
    echo PHP_FLOAT_MAX . "</br>";
    echo PHP_FLOAT_MIN . "</br>";

    /* Magic Constants are constants whose values depend on settings, position or time.

    The naming convention for magic constants are beginning and trailing double underscores. */
    echo "</br><p>Magic Constants:</br>";
    echo __LINE__ . "</br>"; // expecting line 14
    echo __FILE__ . "</br>";
    echo __DIR__ . "</br>";
?>