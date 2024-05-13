<!-- filename: 19_for_loops.php -->

<?php
    for ($i = 0; $i < 20; $i++) {

        if($i === 10){
            echo "skipped number 10 </br>";
            continue;
        }

        if($i === 16) {
            echo "stopped at 16 </br>";
            break;
        }

        echo $i . "</br>";
    }
?>