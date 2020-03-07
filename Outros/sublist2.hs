--Defina a função sublist que obtém uma sublista passando início, fim e a lista
-- se forem utilizados números negativos, interprete-os como sendo contando a partir
-- do fim da lista. O índice final não entra na lista

sublist a b xs = drop fst (take snd xs)
    where fst = if a < 0 then (mod a (length xs)) else a
          snd = if b < 0 then (mod b (length xs)) else b