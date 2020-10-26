import Control.Monad

-- HelloWorld --
printMultipleLines :: Int -> IO ()
printMultipleLines n
   | n <= 0 = return ()
   | otherwise = do
       hello
       printMultipleLines (n - 1)

hello :: IO()
hello = putStrLn "Ola Mundo"

primeiroPrograma :: IO()
primeiroPrograma = do
    line <- getLine
    let x = read line :: Int
    printMultipleLines x

segundoPrograma :: IO()
segundoPrograma = do
    codigo <- getLine
    pessoas <- getLine
    let x = words pessoas
    ultron codigo x

ultron :: String -> [String] -> IO()
ultron codigo [] = return ()
ultron codigo (x:xs) = do
    let aux = porcentagem codigo x
    if(aux == length x)
        then putStrLn "Chefe"
        else if(aux > (length x) `div` 2)
            then putStrLn "Ultron"  
            else putStrLn "Pessoa" 
    ultron codigo xs

porcentagem :: String -> String -> Int
porcentagem codigo "" = 0
porcentagem codigo (x:xs) 
    | x `elem` codigo = 1 + porcentagem codigo xs
    | otherwise = porcentagem codigo xs

{- terceiroPrograma :: IO()
terceiroPrograma = do
    line1 <- getLine
    let qtd = read line1 :: Int
     -}
    
{- leitor :: Int -> IO()
leitor qtd = do
    if(qtd <= 0)
        then return ()
        else do 
            linha <- getLine
            let x = words linha
                if(compara x) 
                    then do
                        leitor (qtd - 1)
                    else putStr "NO"  -}
            
--getMultipleLines :: Int -> IO()
{- getMultipleLines :: t -> IO [String]
getMultipleLines n 
    | n <= 0 = return []
    | otherwise = do
        line <- getLine
        return (line : getMultipleLines2 (n-1)) -}

{- getLines ::Int -> IO [String]
getLines n = do  -}
    
        

main :: IO()
main = segundoPrograma
