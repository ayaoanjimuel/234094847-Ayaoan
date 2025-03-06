<?php
echo "FizzBuzz loop:\n";
for ($i = 1; $i <= 100; $i++) {
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo "FizzBuzz\n";
    } elseif ($i % 3 == 0) {
        echo "Fizz\n";
    } elseif ($i % 5 == 0) {
        echo "Buzz\n";
    } else {
        echo $i . "\n";
    }
}

echo "\n";


echo "Fibonacci even numbers (First 10 numbers):\n";
$fib = [0, 1];
for ($i = 2; $i < 10; $i++) {
    $fib[] = $fib[$i - 1] + $fib[$i - 2];
}

$even_fib = array_filter($fib, function($num) {
    return $num % 2 == 0;
});

print_r($even_fib);
?>
