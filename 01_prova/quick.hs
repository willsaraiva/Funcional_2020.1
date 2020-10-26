qsort [] = []
qsort (x:xs) = menores++[x]++maiores
    where menores = qsort [y | y <- xs, y <= x]
          maiores = qsort [y | y <- xs, y > x]

main = do
    a <- readLn :: IO [Int]
    print $ qsort a
