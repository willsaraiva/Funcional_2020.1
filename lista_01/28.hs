rotDir n xs = if n > 0 then rotDir (n-1) (ult:(init xs)) else xs
    where ult = last xs
          qtd = mod n (length xs)  