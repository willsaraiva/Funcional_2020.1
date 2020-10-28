intercala xs [] = xs
intercala [] ys = ys
intercala (x:xs) (y:ys) = [x]++[y]++intercala xs ys 