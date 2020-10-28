buscaB :: [Int] -> Int -> Int
buscaB [] n = -1
buscaB [x] n = -1 
buscaB xs n 
    | n == mid' = index
    | n < mid'  = buscaB (take index xs) n
    | n > mid'  = buscaB (drop index xs) n
    where mid' = xs !! index
          index = div (length xs) 2


makeTuplas xs = zip [0..n] xs
    where n = ((length xs)-1)