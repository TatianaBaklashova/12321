<?php

function fib($n)
{
    $result = [1, 1];

    for($i = 2; $i <= $n; $i++ ) {
        $result[] = $result[$i-1] + $result[$i-2];
    }
    return $result;
}

print_r(fib(64));
?>