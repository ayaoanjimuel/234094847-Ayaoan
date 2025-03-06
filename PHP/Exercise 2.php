<?php
// Check if a number is even or odd
$number = 10; // You can change this value to test other numbers

if ($number % 2 == 0) {
    echo "$number is even.\n";
} else {
    echo "$number is odd.\n";
}

// Modify the program to check if the number is positive, negative, or zero
if ($number > 0) {
    echo "$number is positive.\n";
} elseif ($number < 0) {
    echo "$number is negative.\n";
} else {
    echo "$number is zero.\n";
}
?>
