quick [] = []
quick (x:xs) = menores++[x]++maiores
    where menores = quick [y | y <- xs, y <= x]
          maiores = quick [y | y <- xs, y > x]