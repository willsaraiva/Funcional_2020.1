-- Nós pegamos um número. Se ele for par, dividimos por dois.
--  Se for ímpar, dividimos ele por 3 e somamos com mais 1. 
--  Pegamos o número resultante e aplicamos a mesma coisa nele,
--  produzindo um novo número e assim por diante.

-- Questão: para todos os números iniciais entre 1 e 100, quantas sequências tem com um tamanho maior do que 15

chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1)