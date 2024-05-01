<!-- filename: 07_associative_arrays.php -->

<?php
    // ASSOCIATIVE ARRAY aka Key-Value Pairs Array
    // A Key-Value Pair is created inside square brackets using "=>" symbol
    echo "</br></br></br>";
    $dragons = [
        "rhaenyra" => "syrax",
        "daemon" => "caraxes",
        "rhaenys" => "meleys",
        "helaena" => "dreamfyre",
        "laenor" => "seasmoke",
        "jacaerys" => "vermax",
        "lucerys" => "arrax",
        "joffrey" => "tyraxes",
        "baela" => "moondancer",
        "aegon" => "sunfyre",
        "jahaerys" => "vermithor"
    ];

    echo "Aegon rides {$dragons['aegon']}";
?>