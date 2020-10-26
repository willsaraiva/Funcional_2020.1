
import Data.List()
-- Linked List -- 
data LinkedList a = Vazia | No a (LinkedList a) deriving (Eq, Show)

fromList :: [a] -> LinkedList a
fromList [] = Vazia
fromList xs = foldr No Vazia xs

toList :: LinkedList a -> [a]
toList Vazia = []
toList (x `No` xs) = x : toList xs

append :: a -> LinkedList a -> LinkedList a
append x l =  fromList (toList l ++ [x])

reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList xs = fromList (reverse (toList xs))