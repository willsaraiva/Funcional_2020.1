
remove x xs = takeWhile (/=x) xs ++ (tail (dropWhile (/=x) xs))