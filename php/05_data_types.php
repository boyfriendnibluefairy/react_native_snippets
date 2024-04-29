<!-- filename: 05_data_types.php -->

<?php
   // NULL DATA TYPE
   // uninitialized variable is null
   echo "</br>"; // insert new line
   $userEmail;
   echo $userEmail;
   echo "</br>";
   var_dump($userEmail);

   // BOOLEAN DATA TYPES
   echo "</br></br></br>";
   $hasUserEmail = true;
   var_dump($hasUserEmail);

   // INTEGERS
   echo "</br></br></br>";
   $userAge = 33;
   $temperature = -9;
   var_dump($userAge);
   echo "</br>";
   var_dump($temperature);
   // underscores are hlepful in writing large numbers
   $countryPopulation = 30_000_000;
   echo "</br>";
   var_dump($countryPopulation);

   // FLOATS - numbers with decimals
   echo "</br></br></br>";
   $exchangeRate = 654.321;
   var_dump($exchangeRate);

   // STRING
   echo "</br></br></br>";
   // single quotes and double quotes are
   // both valid
   $firstName = "Aegon";
   $khaleesi = 'Daenerys';
   var_dump($firstName);
   echo "</br>";
   var_dump($khaleesi);
   /* the weird dollar sign for variables
   are actually used for string interpolation */
   echo "</br>";
   $completeName = "{$firstName} Targaryen";
   var_dump($completeName);
   // access a character from a string
   echo "</br>";
   $completeName[1] = 'a';
   var_dump($completeName);
?>