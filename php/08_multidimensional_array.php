<!-- filename: 08_multidimensional_array.php -->

<?php
    /* MULTIDIMENSIONAL ARRAY
    -> An array that stores an array.
     */
    $orders = [
        "Aegon" => "pizza",
        "Helaena" => ["coffee", "spaghetti", "lasagna"],
        "Aemond" => ["burger", "pepsi"]
    ];

    echo "{$orders['Helaena'][1]}";
?>