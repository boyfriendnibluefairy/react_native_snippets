<!-- filename: 23_unset_function.php -->

<?php
/* When a variable is created, a memory is allocated for it. If we want to delete the memory of variable to save space while the script is executing, we can use the unset() function.

*/
$westerosi = ["Aegon", "Daenerys", "Jon"];

print_r($westerosi);

unset($westerosi[1]);

echo "</br>";
print_r($westerosi);

?>