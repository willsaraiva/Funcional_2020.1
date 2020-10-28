select s [] = []
select s (x:xs) = [s!!x]++select s xs