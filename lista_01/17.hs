intern 0 = []
intern n = [(-1)*n]++[n]++intern(n-1)

alter n = reverse(intern n)