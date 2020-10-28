compac [] = []
compac (x:xs) = if freq' /= 1 then [[x, freq']] ++ compac (drop freq' xs) else [[x] ++ compac (drop freq' xs)
   where freq' = freqConsec x xs

freqConsec n [] = 1
freqConsec n (x:xs) = if n == x then 1 + freqConsec n xs else freqConsec n xs 
          