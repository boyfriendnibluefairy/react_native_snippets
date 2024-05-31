<!-- filename: 32_anonymous_function.php -->

<!--
    Anonymous function is a function that doesn't have a name. They are considered as an expression.

    To access anonymous function from a different line, you can store anonymous function definition to a variable.

    It lets you call different functions using one function call.
-->

<?php

$scaleIncreased = function ($x){
    return $x * 2;
};

echo $scaleIncreased(10);
echo "</br></br>";

$scaleIncreased = function ($x){
    return $x * 3;
};

echo $scaleIncreased(10);

?>
