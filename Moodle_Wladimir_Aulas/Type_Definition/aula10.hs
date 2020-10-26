-- Tipo Arvore Binaria de Busca:
    -- Cada nó teremos um tipo de dado do tupo genérico a
    -- As folhas são árvores vazias

data Arv a = No a (Arv a) (Arv a)
           | ArvVazia
           deriving(Show, Eq)

arv1 = ArvVazia
arv2 = No 3 arv1 arv1
arv3 = No 5 arv1 arv1
arv4 = No 4 arv2 arv3
arv5 = No 4 arv3 arv2
arv8 = list2Arv [4, 2, 3, 6, 5, 4, 1]

-- Mostra a árvore que é passada como parâmetro(in-order)
listar :: Arv a -> [a]
listar (ArvVazia) = []
listar (No x esq dir) = listar esq ++ [x] ++ listar dir

-- Mostra a árvore que é passada como parâmetro(in-order)
mostrar :: Show a => Arv a -> [Char]
mostrar (ArvVazia) = "[]"
mostrar (No x esq dir) = "[" ++ show x ++ mostrar esq ++ mostrar dir ++ "]"


-- Verifica se a lista está em ordem crescente
crescente [] = True
crescente [x] = True
crescente (x:y:ys) = x <= y && crescente (y:ys)

-- Verificar se a ordem está ordenada
ordenada :: Ord a => Arv a -> Bool
ordenada arv = crescente (listar arv)

-- Realiza a busca de um elemento em uma determinada arvore
busca :: Ord a => a -> Arv a -> Bool
busca x (ArvVazia) = False
busca x (No y esq dir)
    | x == y = True
    | x < y  = busca x esq
    | x > y  = busca x dir

-- Insere um elemento em uma determinada arvore
inserir :: Ord a => a -> Arv a -> Arv a
inserir x (ArvVazia) = No x (ArvVazia) (ArvVazia)
inserir x (No y esq dir)
    | x == y = (No y esq dir)
    | x < y  = No y (inserir x esq) dir
    | x > y  = No y esq (inserir x dir)

-- Recebe uma lista e retorna uma arvore
list2Arv :: Ord a => [a] -> Arv a
list2Arv [] = ArvVazia
list2Arv (x:xs) = inserir x (list2Arv xs)

list2Arv' :: Ord a => [a] -> Arv a
list2Arv' [] = ArvVazia
list2Arv' (xs) = list2Arv (reverse xs)


-- Retorna altura de um árvore
altura :: Arv a -> Int
altura ArvVazia = 0
altura (No x esq dir) = 1 + max (altura esq) (altura dir)

-- Verifica se uma determinada árvore é equilibrada(balanceada)
equilibrada :: Arv a -> Bool
equilibrada ArvVazia = True
equilibrada (No x esq dir)
    | abs ( (altura esq) - (altura dir) ) <= 1 = equilibrada esq && equilibrada dir
    | otherwise                                = False 

-- Gerar uma árvore equilibrada por meio de uma lista
list2ArvEquilibrada :: Ord a => [a] -> Arv a
list2ArvEquilibrada [] = ArvVazia
list2ArvEquilibrada xs = No (ys!!meio) (list2ArvEquilibrada esq) (list2ArvEquilibrada dir)
    where ys = quickSort xs
          n = length xs  
          meio = div n 2
          esq  = take (meio) ys
          dir  = drop (meio+1) ys


-- Ordena uma lista
quickSort []     = []
quickSort (x:xs) = quickSort esq ++ [x] ++ quickSort dir 
    where esq = [ y | y <- xs, y <= x]
          dir = [ y | y <- xs, y > x]