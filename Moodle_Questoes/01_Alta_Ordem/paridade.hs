-- Verifica se a quantidade de valores True é par(usando fold)
---- Descrição: Dada uma lista de Booleanos, retorna True se 
---- a quantidade de valores "True" for par, e retorna
---- Falso caso contrário.
paridade :: [Bool] -> Bool
paridade xs
    | length(filter (==True) xs) `mod` 2 == 0 = True 
    | otherwise = False