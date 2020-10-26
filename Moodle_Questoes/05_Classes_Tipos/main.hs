import Numeric
import Text.Printf ( printf )

-------- Construtor para o tipo Complex --------- 
data Complex = Complex { real :: Float ,img :: Float}  

instance Show Complex where
    show (Complex real img) = show real ++ " + " ++ show img ++ "i"

instance Num Complex where
    (+) (Complex a b) (Complex c d) = Complex (a+c) (b+d)
    (-) (Complex a b) (Complex c d) = Complex (a-c) (b-d)
    (*) (Complex a b) (Complex c d) = Complex (a*c - b*d) (a*d + b*c)
    negate (Complex a b)            = Complex (-a) (-b)
    abs (Complex a b)               = Complex (sqrt((a*a) + (b*b))) 0
    signum (Complex a b)            = Complex (abs(b) /abs(a) ) (abs(a)/abs(b))
    fromInteger c                   = Complex (fromIntegral c) 0

---------------- Construtor para o tipo Date ------- 
data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro| Novembro| Dezembro deriving (Show, Ord, Eq, Enum) 

data Date = MkDate { dia :: Int , mes :: Mes, ano :: Int }

instance Show Date where
    show (MkDate dia mes ano) = show dia ++ " de " ++ show mes ++ " de " ++ show ano

instance Eq Date where
    (==) (MkDate dia mes ano) (MkDate dia2 mes2 ano2)   | ano2 == ano && mes2 == mes && dia2 == dia = True
                                                        | otherwise = False  

instance Ord Date where
    (<=) (MkDate dia mes ano) (MkDate dia2 mes2 ano2)   | ano2 > ano = True
                                                        | ano2 == ano && mes2 > mes = True
                                                        | ano2 == ano && mes2 == mes && dia2 >= dia = True
                                                        | otherwise = False
          

---------------- Construtor para o tipo Gesto --------------
data Gesto = Pedra | Papel | Tesoura deriving (Show, Eq)

ganhaDe :: Gesto -> Gesto -> Bool
ganhaDe Pedra Tesoura   = True
ganhaDe Pedra Papel     = False
ganhaDe Pedra Pedra     = False
ganhaDe Papel Pedra     = True
ganhaDe Papel Tesoura   = False
ganhaDe Papel Papel     = False
ganhaDe Tesoura Papel   = True
ganhaDe Tesoura Pedra   = False
ganhaDe Tesoura Tesoura = False 

ganhadores :: [(Gesto,Gesto)] -> [Int]
ganhadores xs = [localiza xs x 0  | x <- xs, ganhaDe (fst x)(snd x)]

localiza :: (Eq a1, Eq a2, Num t) => [(a1, a2)] -> (a1, a2) -> t -> t
localiza (g:gs) x id 
    | fst g == fst x && snd g == snd x = id
    | otherwise = localiza gs x (id+1)
