<!-- filename: 29_named_arguments.php -->

<!--
    If we don't use named arguments, we pass values to functions based on sequence. Sometimes we don't need to pass values to optional parameters. In such case, we just use named arguments to initialize a few target variables.
-->
<?php

function display_info(
    $firstName = "No Name from Braavos",
    $age,
    $hasDragon = 0,
    $house = "from Essos"
    ){
    echo $firstName;
    echo "<br/>";
    echo $age;
    echo "<br/>";
    echo $hasDragon;
    echo "<br/>";
    echo $house;
    echo "<br/>";
    echo "<br/>";
}

display_info("Aegon", 33, 1, "Targaryen");
display_info(firstName: "Daenerys", age: 21);
?>
