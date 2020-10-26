-- Descrição: Função com o funcionamento semelhante a map usado no Prelude
-- porém sua implementação foi realizada com Fold

map' :: Foldable t1 => (t2 -> a) -> t1 t2 -> [a]
map' f xs = foldr (\x z -> f x : z) [] xs 