vetFib 0 = [0]
vetFib 1 = [0]
vetFib 2 = [0, 1]
vetFib n = vetFib (n-1) ++ [fib n] 

-- Iniciando de 0
fib 0 = 0
fib 1 = 0
fib 2 = 1
fib x = fib (x-1) + fib(x-2)