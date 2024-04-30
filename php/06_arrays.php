<!-- filename: 06_arrays.php -->

<?php
   // ARRAYS
   // Arrays are created with square brackets.
   echo "</br></br></br>";
   $dragonRiders =
   ["Aegon", "Daenerys", "Daemon"];
   var_dump($dragonRiders[1]);
   // unspecified index means php is appending a data at the end
   echo "</br>";
   $dragonRiders[] = "Leanor";
   var_dump($dragonRiders);
?>