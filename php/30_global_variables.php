<!-- filename: 30_global_variable.php -->

<!--
    By default, variables are global. It can be accessed by other files.
    Variables declared outside a function cannot be accessed by the function. To access a global variable inside a function, use the global keyword. See example below.

    However, editing the values of a global variable inside a function is not recommended. If we want to edit the values of a global variable using functions, we need to use parameters and return values.
-->

<?php


$x = 3;
print_r($x);

include 'example.php';

function display_value()
{
    global $x;
    echo "</br></br>";
    echo $x;
}

display_value();

?>
