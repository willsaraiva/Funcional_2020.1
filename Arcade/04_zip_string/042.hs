cmpStr [] [] = True
cmpStr [] _ = False
cmpStr _ [] = False
cmpStr (x:xs) (y:ys) = if x == y then cmpStr xs ys else False

isPalind xs = cmpStr xs (reverse xs)