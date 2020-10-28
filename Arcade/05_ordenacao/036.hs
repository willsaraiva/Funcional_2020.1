mergesort [] = []
mergesort (x:[]) = [x]
mergesort xs = merge a b
   where n = div (length xs) 2
         a = mergesort $ take n xs
         b = mergesort $ drop n xs

-- "Função que realiza o merge entre duas listas"
merge [] [] = []
merge xs [] = xs
merge [] ys = ys
merge (x:xs)(y:ys) 
        | x < y = x:(merge xs (y:ys))
        |otherwise = y:(merge (x:xs) ys)