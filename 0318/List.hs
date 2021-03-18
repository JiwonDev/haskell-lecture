lastButOne xs = last (init xs)
notCapital xs = [x | x <- xs, x `notElem` ['A'..'Z']]
diff as bs = [a | a <- as, a `notElem` bs]
swap xs = [(snd x, fst x) | x <- xs]

-- 패턴매칭 사용
swap' xs = [(y,x) | (x,y) <- xs]
sum' xs = if null xs then 0 else head xs + sum' (tail xs)

sum2 [] = 0
sum2 (x:xs) = x + sum2 xs
divisors n = [x | x <- [1..n], n `mod` x == 0]
