removeElem z [] = []
removeElem z xs = (takeWhile (/=z) xs) ++ (tail $ dropWhile (/=z) xs)

bubble [] = []
bubble [x] = [x]
bubble xs = bubble listaRestante ++ [maximum xs]
    where listaRestante = removeElem (maximum xs) xs