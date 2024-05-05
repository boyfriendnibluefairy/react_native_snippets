<!-- filename: 11_string_concatenation.php -->

<?php
    // String Concatenation
    // Unlike variables, constants do not support string interpolation.
    echo "</br></br></br>";
    const LAST_NAME = "Targaryen";
    // String concatenation is performed with constants using the dot operator.
    $firstName = "Daenerys";
    $completeName = $firstName . " ";
    $completeName .= LAST_NAME;
    echo $completeName;
?>