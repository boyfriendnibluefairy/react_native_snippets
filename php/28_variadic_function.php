<!-- filename: 28_variadic_function.php -->

<!--
    The "..." keyword tells php that a function can accept unlimited number of arguments.

    Note that the variadic element must be the last element in a list of paramters.
-->
<?php

function getTotal(int|float ...$x){
    return array_sum($x);
}

echo "<br/>";
echo getTotal(1,2,3,4,5,6);
echo "<br/>";
echo getTotal(100, -1);

?>
