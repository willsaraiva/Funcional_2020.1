-- Função que recebe duas listas e compara se
--  elas são iguais
iguais [] [] = True
iguais xs [] = False
iguais [] ys = False
iguais (x:xs) (y:ys) = x /= y || iguais xs ys 

-- Função que recebe duas strings e retorna 1
--  se a primeira string for a maior, (-1) se
--  a segunda string for maior e 0 se as duas
--  tiverem o mesmo tamanho
compara' [] [] = 0
compara' xs [] = 1
compara' [] ys = (-1)
compara' (x:xs) (y:ys) = 
    | x == y = compara' xs ys
    | x < y = 1
    | otherwise = (-1)

