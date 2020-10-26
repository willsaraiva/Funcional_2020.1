unique [] = []
unique (x:xs) = x:(unique (filter (/=x) xs))

main = do
    a <- readLn :: IO [Int]
    print $ unique a

