freqConsec n [] = 0
freqConsec n (x:xs) = if n == x then 1 + freqConsec n xs else 0

compac [] = []
compac xs = [(element, freq)]++compac (drop freq xs)
    where element = head xs
          freq = freqConsec (head xs) xs