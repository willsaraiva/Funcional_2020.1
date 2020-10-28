line 0 = []
line a = take a [first..]
    where first = sum (init [1..a]) + 1