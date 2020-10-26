inserir n [] = [n]
inserir n (x:xs) = if n > x then [x]++inserir n xs else [n]++[x]++xs