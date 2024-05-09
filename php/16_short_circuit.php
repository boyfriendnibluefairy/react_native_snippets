<!-- filename: 16_short_circuit.php -->

<?php
    // Php short circuits logical operator for efficient evaluation.
    function testShortCircuit(){
        echo "testShortCircuit function called";

        return true;
    }

    // In the example below, the function is not called because there's no point in evaluating the expression after && because the first argument is already false.
    var_dump(false && testShortCircuit());
?>