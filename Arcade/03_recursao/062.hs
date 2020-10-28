
triangle :: Int -> [[Int]]
triangle 0 = []
triangle n = triangle (n-1) ++ [(line n)]

line :: Int -> [Int]
line a
    | a == 0 = [] 
    | otherwise = take a [first..]
        where first = sum (init [1..a]) + 1