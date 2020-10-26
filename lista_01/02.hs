--menorDeTres x y z
--    | (min x (min y z)) == x = x
--    | (min y (min x z)) == y = y
--    | otherwise = z

menorDeTres x y z = min x (min y z)