concatena [] [] = []
concatena xs [] = xs
concatena [] ys = ys
concatena xs ys = [head xs]++concatena (tail xs) ys