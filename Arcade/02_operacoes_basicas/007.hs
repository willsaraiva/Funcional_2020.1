somaImpares [] = 0 
somaImpares xs = sum (filter (odd) xs)