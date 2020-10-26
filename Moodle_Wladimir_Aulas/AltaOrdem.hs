--lenght' :: (Foldable l) => l a -> Int

--lenght' = foldr (\f x -> 1 + x) 0 

--lenght xs = foldl (\acc x -> 1 + acc) 0 xs
--sum' xs = foldl (\acc x -> acc + x) 0 xs

--map' f xs = foldr (\x acc -> f x : acc) [] xs
--map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs


--sumlength []     = (0,0)
--sumlength (x:xs) = (s + x, n + 1)
--   where 
--    (s,n) = sumlength xs

--sumlength :: (Num a, Num b, Foldable t) => t a -> (a, b)
--sumlength :: (Foldable t) => t a -> (a, b)
--sumlength = foldr (\x acc -> (fst(acc)+x, snd(acc)+1)) (0,0)

--minmax xs = foldr (\x   ) 

--cond :: Bool -> a -> a -> a
--cond True   x y = x
--cond False  x y = y

--minmax []      = error "minMax : empty list"
--minmax [x]     = (x, x)
--minmax (x:xs)  = (cond (x<a) x a, cond (x>b) x b)
--    where (a, b) = minmax xs

--minmax' xs
--    --| null xs   = error "minmax : empty list"
--    --| otherwise = foldr f v (init xs)
--    where
--    v = (last xs, last xs)
--    f x (a, b) = (cond (x<a) x a, cond (x>b) x b)

--data Shape = Circle Float Float Float|Rectangle Float Float Float Float

--surface :: Shape -> Float  
--surface (Circle _ _ r) = pi * r ^ 2  
--surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1) 

-- rot n xs = (drop n xs)++(take n xs)

-- conv list =  putStrLn( unwords (map show list) )

import Numeric
-- complex -- 
data Complex = Complex { real :: Float ,img :: Float} deriving (Show) 

instance Num Complex where
    (+) showFFloat Just(2) (Complex a b)  (Complex c d) = Complex (a+c) (b+d)
    (-) (Complex a b) (Complex c d) = Complex (a-c) (b-d)
    (*) (Complex a b) (Complex c d) = Complex (a*c + a*d) (b*c + b*d)
    negate c        = undefined
    abs c           = undefined
    signum c        = undefined
    fromInteger n   = undefined







 
