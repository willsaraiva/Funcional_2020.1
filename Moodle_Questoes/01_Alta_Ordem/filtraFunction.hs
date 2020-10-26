-- Descrição: Recebe uma função, uma condição e uma lista. Tem como retorno 
-- uma lista onde cada elemento é verdadeiro para a condição passada e foi aplicado
-- também a função que foi passada.          

filtraFunction :: (a->b) -> (a->Bool) -> [a] -> [b]
filtraFunction f p xs = 
    map f (filter p xs)
