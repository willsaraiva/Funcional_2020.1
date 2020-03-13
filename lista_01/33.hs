
divisores n = [x | x<-[2..n-1], (mod n x)==0]

primo n = if (length (divisores n))==0 then True else False