-- Descrição: Dados duas listas, remove todos os elementos da segunda lista
-- que estão contidos na primeira lista.

removeSecondList :: (Foldable t1, Foldable t2, Eq a) => t2 a -> t1 a -> [a]
removeSecondList xs ys = foldr (\x z -> if x `notElem` xs then x:z else z ) [] ys