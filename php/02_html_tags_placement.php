<!-- echo is used to output strings -->

<!-- It is ok to write php code inside
html tag -->
<h2>
    <?php
    echo "echo inside html tags";
    ?> <!-- This closing tag is optional when you don't have plans of leaving php mode. -->
</h2>

<!-- It is also ok to write html tags inside
echo statements -->
<?php
   echo "<h1> html tag inside echo </h1>"
?>