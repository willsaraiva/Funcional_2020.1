concat' [] [] = []
concat' xs [] = xs
concat' [] ys = ys
concat' xs ys = [head xs]++concat' (tail xs) ys