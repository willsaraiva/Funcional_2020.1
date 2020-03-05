unique [] = []
unique [x] = [x]
unique (x:xs) = if elem x xs then unique xs else unique xs++[x]