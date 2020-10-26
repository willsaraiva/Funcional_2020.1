total xs = sum [1 | _ <- xs]

-- total xs = sum(map(\x -> 1) xs)

-- total [] = 0
-- total (_:xs) = 1 + total(xs)