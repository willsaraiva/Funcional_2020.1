-- Descrição: Dado um número x, retorna uma lista de Tuplas
-- onde os seus elementos são primos e soma do second e third
-- elementos da Tupla é igual ao elemento first.

goldbach :: Int -> [(Int,Int,Int)]
goldbach n = [(n,x,y) | x <- primeComplementares 2 (n-1),let y = n-x, isPrime y]

primeComplementares a b = 
    takeWhile (<= b) $ [ x| x <- [2..], isPrime x]

------------- Funções Auxiliares ----------------
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
------------- Funções Auxiliares ----------------
