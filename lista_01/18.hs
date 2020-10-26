reverso [] = []
reverso [x] = [x]
reverso xs = [last xs]++reverso (tail(init xs))++[head xs] 