compac [] = []
compac (x:xs) = ver x (qtd x xs):(compac (drop (qtd x xs) xs)) 

qtd a [] = 0
qtd a (x:xs) = if a == x then 1 + qtd a xs else 0

ver a 0 = [a]
ver a c = [a] ++ [c+1]

main = do
    a <- readLn :: IO [Int]
    print $ compac a
