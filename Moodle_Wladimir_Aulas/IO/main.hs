-- Primeira questão
printMultipleLines :: Int -> IO ()
printMultipleLines n
   | n <= 0 = return ()
   | otherwise = do
		printLn "Hello"
		printMultipleLines (n - 1)
		
programa1 :: IO ()
programa1 = do
	x <- getLine
	let n = read line :: Int
	printMultipleLines n 

-- Segunda Questão



main :: IO ()
main = programa1	
