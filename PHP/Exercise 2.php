<?php
$number = 10; 

if ($number % 2 == 0) {
    echo "The number $number is even.\n";
} else {
    echo "The number $number is odd.\n";
}

if ($number > 0) {
    echo "The number $number is positive.\n";
} elseif ($number < 0) {
    echo "The number $number is negative.\n";
} else {
    echo "The number is zero.\n";
}
?>
