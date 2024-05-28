<!-- filename: 31_static_variables.php -->

<!--
    When a variable is declared inside a function, it is deleted after the function used it.

    To retain the value of variable outside a function call, use the static keyword.
-->

<?php

function incrementor()
{
    //$x = 3;
    static $x = 3;
    return $x++;
}

echo "</br>" .incrementor();
echo "</br>" .incrementor();
echo "</br>" .incrementor();


?>
