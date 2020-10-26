-- Concatena uma lista de listas(usando fold)
---- Descrição: Dada uma lista de listas, retorna uma lista contentendo
---- todas as listas de maneira concatenada.
concatena :: [[Int]] -> [Int]
concatena [] = []
concatena (x:xs) = foldl (++) x xs