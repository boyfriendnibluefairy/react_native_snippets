<!-- filename: 12_if_statement.php -->

<?php
   echo "</br></br></br>";
   $grade = 50;

   if($grade > 90) {
    echo "A";
   } else if ($grade > 80) {
    echo "B";
   } else if ($grade > 70) {
    echo "C";
   } else {
    echo "F";
   }
?>