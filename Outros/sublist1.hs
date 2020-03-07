-- Arquivo contendo a resposta a seguinte questão:
--  Criar uma função onde se passa como parâmetro dois números inteiros e 
--  uma lista e retorne uma nova lista delimitada pelos dois número inteiros
--  Obs: se o segundo indice for negativo, ele deve o número de números que será
--  retirado do fim da lista original.

sublist a b xs =  drop a (take (mod (b+(length xs)) (length xs)) xs) 

