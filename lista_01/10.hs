frequencia n [] = 0
frequencia n xs = if (head xs) == n then 1 + frequencia n (tail xs)  else frequencia n (tail xs)

unico n xs = if (frequencia n xs) == 1 then True else False 