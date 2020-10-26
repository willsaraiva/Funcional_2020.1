-- Definição de tipos

-- Sinônimos

type Pos = (Int, Int)
type Cells = [Pos]
-- isAlive :: Cells -> Pos -> Bool

-- Type pode ter parâmetros
type Assoc ch v = [(ch, v)]

    -- idades :: Assoc String Int
    -- idades = [("Joao", 10), ("Jose", 12)]

    -- search :: String -> Assoc String Int -> Int
    -- search nome idades = head [ b| (a, b) <- idades, nome == a]

-- Construtores Verdadeiro e Falso
data Booeleano = Verdadeiro | Falso deriving (Show, Eq)

-- Construtores do tipo Direction
data Direction = Esq | Dir | Cima | Baixo deriving (Show, Eq)

-- Retorna a posição oposto a passada por parâmetro
    -- oposto :: Direction -> Direction 
    -- oposto Esq = Dir
    -- oposto Dir = Esq
    -- oposto Cima = Baixo
    -- oposto Baixo = Cima

-- Construtores do tipo Figura
data Figura = Circ Float | Rect Float Float

    -- quadrado :: Float -> Figura 
    -- quadrado l = Rect l l

    -- area :: Figura -> Float
    -- area (Circ r) = pi*r*r
    -- area (Rect b h) = b*h

--------------- Maybe e Just -------------------------------

safeDiv :: Int -> Int -> Maybe Int
safeDiv a b
    | b == 0    = Nothing
    | otherwise = Just ( div a b)

safeHead :: [a] -> Maybe a
safeHead xs
    | null  xs  = Nothing
    | otherwise = Just (head xs)


-- Construtores do tipo Natural
data Nat = Zero | Succ Nat deriving (Show, Eq, Ord)

    -- Retorna a soma de dois número naturais
    -- zero = Zero
    -- um = Suc Zero
    -- dois = Suc um

    -- soma :: Nat -> Nat -> Nat
    -- soma n1 Zero = n1
    -- soma n1 (Suc n2) = Suc (soma n1 n2)

-- Construtores do tipo Expressão
data Expr = Val Int
    | Soma Expr Expr
    | Mult Expr Expr
    deriving (Show, Eq)

    -- expr1 = Val 5 
    -- expr2 = Soma (Val 3) (Val 2)
    -- expr3 = Mult (Val 5) (expr2)
    
    -- Retorna o valor de uma determinada expressão
    -- valor :: Expr -> Int
    -- valor (Val x)          = x
    -- valor (Soma exp1 exp2) = valor exp1 + valor exp2 
    -- valor (Mult exp1 exp2) = valor exp1 * valor exp2 


