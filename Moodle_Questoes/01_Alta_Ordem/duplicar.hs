duplicar [] = []
duplicar (x:xs) = if x `elem` lst then x:x:duplicar xs else x:duplicar xs
    where lst = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']