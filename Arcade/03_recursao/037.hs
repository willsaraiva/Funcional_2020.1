--rotEsq n [] = []
rotEsq n xs = if qtd > 0 then rotEsq (qtd-1) (tail xs)++[begn] else xs
    where begn = head xs
          qtd = (mod n (length xs))  