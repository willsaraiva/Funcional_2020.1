--Defina a função interior tal que (interior xs) é uma lista obtida eliminando os extremos da lista xs. Por exemplo,

interior [] = []
interior xs = tail(init xs)
