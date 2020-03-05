pertence n [] = False
pertence n (x:xs) = if n == x then True else pertence n xs