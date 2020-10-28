paridade xs
    | length(filter (==True) xs) `mod` 2 == 0 = True 
    | otherwise = False