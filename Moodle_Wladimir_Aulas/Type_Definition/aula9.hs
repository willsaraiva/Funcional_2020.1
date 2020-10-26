-- Tipo de Dados Proposição Lógica

import Data.List

-- Construtor do tipo Figura
data Figura = Circ Float | Rect Float Float deriving (Show)

area :: Figura -> Float
area (Circ r) = pi*r*r
area (Rect b h) = b*h

data Prop = Const Bool
    | Var Char
    | Neg Prop
    | Conj Prop Prop
    | Disj Prop Prop
    | Impl Prop Prop
    deriving(Show)

prop1 = Const True
prop2 = Const False
prop3 = Var 'A'
prop4 = Var 'B'
prop5 = Var 'C'
prop6 = Neg prop5
prop7 = Conj prop6 prop4
prop8 = Disj prop7 prop6
prop9 = Impl prop8 prop7
prop10 = Conj prop9 prop3
prop11 = Impl prop3 prop4

-- Imprime as proposições por extenso
mostra :: Prop -> [Char]
mostra (Const x) = show x
mostra (Var x) = [x]
mostra (Neg prop) = "!" ++ "(" ++ mostra prop ++ ")"
mostra (Conj prop1 prop2) = "(" ++ mostra prop1 ++ " && " ++ mostra prop2 ++ ")"
mostra (Disj prop1 prop2) = "(" ++ mostra prop1 ++ " || " ++ mostra prop2 ++ ")"
mostra (Impl prop1 prop2) = "(" ++ mostra prop1 ++ " => " ++ mostra prop2 ++ ")"

-- Retorna as variáveis de uma proposição
vars :: Prop -> [Char]
vars (Const x) = []
vars (Var c) = [c]
vars (Neg p) = vars p
vars (Conj p1 p2) = nub (vars p1 ++ vars p2) 
vars (Disj p1 p2) = nub (vars p1 ++ vars p2)
vars (Impl p1 p2) = nub (vars p1 ++ vars p2)

-- Função que conta a quantidade de vezes que uma variável ocorre em uma proposição
-- contar :: Prop -> [(Char), Int]
-- contar (Const x) = []
-- contar (Var x) = [(c, 1)]
-- contar (Neg p) = contar p
-- contar (Conj p1 p2) = merge l1 l2
--     where l1 = contar p1
--           l2 = contar p2

-- merge l1 [] = l1
-- merge [] l2 = l2
-- merge l1 l2 = 

-- Construtor do tipo Associativo
type Assoc ch v = [(ch, v)]

-- Retorna o valor associado ao ch que é igual a x
findV :: Eq ch => ch -> Assoc ch v -> v
findV x assoc = head [ v | (ch, v) <- assoc, ch == x ]

-- Construtor do tipo Atribuição
type Atrib = Assoc Char Bool

-- Lista de atribuição
atr1 = [('A', True), ('B', False), ('C', True)]

valor :: Prop -> Atrib -> Bool
valor (Const x) atrib = x
valor (Var x) atrib = findV x atrib
valor (Neg p) atrib = not(valor p atrib)
valor (Conj p1 p2) atrib = (valor p1 atrib) && (valor p2 atrib) 
valor (Disj p1 p2) atrib = (valor p1 atrib) || (valor p2 atrib)
valor (Impl p1 p2) atrib = not(valor p1 atrib) || (valor p2 atrib)  

-- Retorna todos os valores verdades possíveis de uma quantidade de bits
bits 0 = [[]]
bits n = [ b:bs | b <- [False, True], bs <- bits (n-1)]

-- Retorna todas as atribuições possíveis de uma proposição
atribs :: Prop -> [Atrib]
atribs p = [zip (var) bs | bs <- bits n]
    where var = vars p
          n   = length (var)

prop12 = Disj (Var 'P') (Neg(Var 'P'))
prop13 = Impl (Var 'P') (Var 'Q')

-- Retorna True se p(proposição) for uma tautologia
tautologia p = and [ valor p atr | atr <- atribs p]

-- Retorna as atribuições que tornam a proposição p verdade
verdade p = [ atr | atr <- atribs p, valor p atr]

-- Retorna as atribuições que tornam a proposição p falso
falso p = [ atr | atr <- atribs p, not(valor p atr)]
