-- Descrição: Dada uma lista de Tuplas, retorna todas as duplas
-- onde os elementos são primos e a diferença entre first e second da Tupla
-- é igual a 2.

primosAndGemeos :: [(Int, Int)]
primosAndGemeos = [(y,x) | x <- [2 .. ], let y = x - 2, isPrime x, isPrime y]
s
--------------- Função auxiliares -------------------
divisores:: Int -> Int -> [Int] -> [Int]
divisores 0 n x = x
divisores divisor n x
    | n `mod` divisor /= 0 = divisores (divisor-1) n x
    | otherwise = [divisor] ++ (divisores (divisor-1) n x)

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime k 
    | length(divisores k k []) == 2 = True
    | otherwise = False
--------------- Função auxiliares -------------------