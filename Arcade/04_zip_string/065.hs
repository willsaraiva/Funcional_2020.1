--indices v [] = []
indices v xs =  [ fst x| x <- (makeTuplas xs), snd x == v]

makeTuplas xs = zip [0..n] xs
    where n = ((length xs)-1)