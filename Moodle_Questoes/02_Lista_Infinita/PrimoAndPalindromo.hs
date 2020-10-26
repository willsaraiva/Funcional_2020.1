-- Descrição: Dado um número x, retorna uma lista com x elementos
-- onde os elementos são primos e palindromos. 

primoAndPalindromo :: Int -> [Int]
primoAndPalindromo x = take x (primoAndPalindromoList)

primoAndPalindromoList :: [Int]
primoAndPalindromoList = [ x | x <- [2 .. ],isPrime x, palindromo (show x) ]

palindromo:: String -> Bool
palindromo [] = True
palindromo x 
    | x == reverse x = True
    | otherwise = False

------------ Funções auxiliares ------------------ 
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
------------ Funções auxiliares ------------------