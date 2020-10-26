--fatorial n = product [1..n]

fat 0 = 1
fat x = x * fat(x-1)