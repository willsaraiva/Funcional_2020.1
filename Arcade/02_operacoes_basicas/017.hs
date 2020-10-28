maior (x:[]) = x
maior (x:xs) = if (x > (head xs)) then maior ([x]++tail xs) else maior xs
