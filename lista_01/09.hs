frequencia n [] = 0
frequencia n xs = if (head xs) == n then 1 + frequencia n (tail xs)  else frequencia n (tail xs)