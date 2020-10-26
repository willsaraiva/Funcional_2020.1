
splitInts list = (impar, par)
    where par = [x | x<-list, (mod x 2) ==0]
          impar = [y | y<-list, (mod y 2) ==1] 