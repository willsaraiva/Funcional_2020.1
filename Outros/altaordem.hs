------------------------------- lenght -------------------------------
--lenght' :: (Foldable l) => l a -> Int
--lenght' = foldr (\f x -> 1 + x) 0 
--lenght xs = foldl (\acc x -> 1 + acc) 0 xs

------------------------------- sum -------------------------------
--sum' xs = foldl (\acc x -> acc + x) 0 xs

------------------------------- map -------------------------------
--map' f xs = foldr (\x acc -> f x : acc) [] xs
--map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

------------------------------- sumlenght -------------------------------
--(sem foldr ou foldl)
--sumlength []     = (0,0)
--sumlength (x:xs) = (s + x, n + 1)
--   where 
--    (s,n) = sumlength xs

--sumlength :: (Num a, Num b, Foldable t) => t a -> (a, b)
--sumlength :: (Foldable t) => t a -> (a, b)
--sumlength = foldr (\x acc -> (fst(acc)+x, snd(acc)+1)) (0,0)

------------------------------- minMax -------------------------------

--minmax xs = foldr (\x   ) 

cond :: Bool -> a -> a -> a
cond True   x y = x
cond False  x y = y

--(sem foldr ou foldl)
--minmax []      = error "minMax : empty list"
--minmax [x]     = (x, x)
--minmax (x:xs)  = (cond (x<a) x a, cond (x>b) x b)
--    where (a, b) = minmax xs

--minmax (x:xs)			   == foldr f v (x:xs)
--(cond (x<a) x a, cond (x>b) x b) == f x (foldr f v xs)
--where 
--where (a, b) = minmax xs

minmax' xs
    | null xs   = error "minmax : empty list"
    | otherwise = foldr f v (init xs)
    where
    v = (last xs, last xs)
    f x (a, b) = (cond (x<a) x a, cond (x>b) x b)

------------------------------- elem -------------------------------

--(sem foldr ou foldl)
--elem a []     = false
--elem a (x:xs) = if a == x then True else elem a xs

--elem a (x:xs)                       == foldr f v (x:xs)
--if a == x then True else elem a xs  == f x (f foldr v xs) 
-- f x z = if x == a then True else z

--elem' a xs = foldr f v xs
--    where 
--    f x z = if x == a then True else z
--    v     = False

elem' a xs = foldl (\x acc -> cond a x) False xs
------------------------------- takeWhile -------------------------------



















