pertence n [] = False
pertence n (x:xs) = (n == x) || pertence n xs