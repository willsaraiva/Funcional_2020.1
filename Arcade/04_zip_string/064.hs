-- produtoEscalar a b = sum (zipWith (*) a b)

produtoEscalar a b = sumTupla (zip a b) 

sumTupla [] = 0
sumTupla (x:xs) = (fst x * snd x) + sumTupla xs