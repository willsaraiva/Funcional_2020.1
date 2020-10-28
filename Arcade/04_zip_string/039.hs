fnd y [] = y
fnd y (x:xs) = if y == fst x then snd x else fnd y xs

upper [] = []
upper (x:xs) = (fnd x letras) : upper xs
    where letras = zip ['a'..'z'] ['A'..'Z']


