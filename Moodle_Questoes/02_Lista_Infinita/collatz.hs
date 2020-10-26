-- Descrição: Dado um número inicial x, se o x for igual a 1
-- o próprio número 1 é retornado. Caso contrário, é chamada a função "operation".
-- Na "operation" se o x for igual a 1 o próprio número 1 é retornado. Caso contráio,
-- esse x é multiplcado por 3 e somado com 1 e o resultado dessa operação é concatenado
-- com uma chamada "operation" para o novo valor de x. Essa operação é feita até que x seja 1.

collatz :: Integer -> [Integer]
collatz x 
    | x == 1 = [1]
    |otherwise = [x] ++ collatz (operation x)

operation :: Integer -> Integer
operation 1 = 1
operation n 
    | n `mod` 2 == 0 = (n `div` 2)
    | otherwise = (n*3)+1