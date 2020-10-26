ordenado [] = True
ordenado [x] = True
ordenado (x:xs) = if x <= (head xs) then ordenado xs else False 