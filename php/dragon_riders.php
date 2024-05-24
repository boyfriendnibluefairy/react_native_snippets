<!-- demo file for 27_include_php_file.php -->
<?php
include "nav.php";
echo "<br/>";

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

    foreach($dragons as $dragon){
        echo $dragon . "</br>";
    }
?>
