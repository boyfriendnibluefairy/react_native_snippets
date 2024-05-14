<!-- filename: 20_for_each.php -->

<?php
    /* FOREACH LOOP is used to extract
    contents of an array */
    $dragons = [
        "arrax",
        "caraxes",
        "dreamfyre",
        "drogon",
        "moondancer",
        "vermithor"
    ];

    foreach($dragons as $dragon){
        echo $dragon . "</br>";
    }

    echo "</br></br></br>";

    // You can also use foreach to get the index or keys of an array.
    foreach($dragons as $key => $dragon){
        echo $key . "</br>";
    }
?>