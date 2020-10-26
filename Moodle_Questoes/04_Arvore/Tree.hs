import Data.Map()

-- Insere um determinado elementos na Árvore -- 

data Arv a = Vazia | No a ( Arv a ) ( Arv a ) deriving (Eq , Show)
insertArvore :: Ord a => a -> Arv a -> Arv a
insertArvore x Vazia = No x Vazia Vazia 
insertArvore x (No y esq dir)
    | x == y = No y esq dir
    | x < y = No y (insertArvore x esq) dir
    | otherwise = No y esq (insertArvore x dir) 

-- Remove os elementos que são folhas, ou seja, não possuem nenhum filho -- 
data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show, Eq)
removeFolhas :: Eq a => ArvBin a -> ArvBin a
removeFolhas Vazia = Vazia
removeFolhas (No x esq dir) 
    | esq /= Vazia && dir /= Vazia = No x (removeFolhas esq) (removeFolhas dir)
    | esq /= Vazia && dir == Vazia = No x (removeFolhas esq) Vazia
    | esq == Vazia && dir /= Vazia = No x Vazia (removeFolhas dir)
    | otherwise = Vazia

-- Verifica se a árvore é cheia, ou seja, todos os elementos da Árvore possuem nenhum ou
-- dois filhos. 
cheia :: Eq a => ArvBin a -> Bool
cheia (No x esq dir)
    | esq /= Vazia && dir /= Vazia = cheia esq && cheia dir
    | esq == Vazia && dir == Vazia = True
    | otherwise = False

