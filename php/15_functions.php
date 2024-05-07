<!-- filename: 15_functions.php -->

<?php
    // FUNCTIONS
    echo "</br></br></br>";

    function getFullName($firstName, $lastName = "Targaryen") : string
    {
        return $firstName . " " . $lastName;
    }

    // call the function
    $greetings = "Hello " . getFullName("Arya", "Stark");
    echo $greetings;

    echo "</br></br></br>";

    $greetings = "Hello " . getFullName("Aegon");
    echo $greetings;

?>