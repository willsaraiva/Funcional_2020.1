-- Inverter lista(usando fold)
---- Descrição: Dada uma lista, retorna o seu inverso
inverter :: [Int] -> [Int]
inverter xs = foldl (flip(:)) [] xs