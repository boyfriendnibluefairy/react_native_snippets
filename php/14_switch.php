<!-- filename: 14_switch.php -->

<?php
    // SWITCH STATEMENT
    $socialStatus = "dragon rider";

    switch($socialStatus)
    {
        case "merchant":
            echo "The person is a merchant.";
            break; // break can be removed for fall through strategy
        case "dragon rider":
            echo "The person is a dragon rider.";
            break;
        case "farmer":
            echo "The person is a farmer.";
            break;
        default:
            echo "The person is unknown";
    }
?>