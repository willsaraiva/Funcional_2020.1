iguais a b c
    | a == b && b == c = "3"
    | a == b || a == c || b == c = "2"
    | otherwise   = "0"