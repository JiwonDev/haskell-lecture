factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

product' :: [Int] -> Int
product' [] = 1
product' (n:ns) = n * product ns

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x] 

(+++) :: [a] -> [a] -> [a]
[] +++ ys = ys
(x : xs) +++ ys = x:(xs +++ ys)

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

even' :: Int -> Bool
even' 0 = True
even' n = odd' (n-1)
odd' :: Int -> Bool
odd' 0 = False
odd' n = even' (n-1)

evens :: [a] -> [a]
evens [] = []
evens (x:xs) = x : odds xs
odds :: [a] -> [a]
odds [] = []
odds (_:xs) = evens xs

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
 | n <= 0 = []
 | otherwise = x : replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
 | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

drop' :: Int -> [a] -> [a]
drop' n xs | n <= 0 = xs 
drop' _ [] = []
drop' n (_:xs) = drop' (n-1) xs

repeat' :: a -> [a]
repeat' x = x:repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys :

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
 | a == x = True
 | otherwise = a 'elem`' xs

ins :: Ord a => a -> [a] -> [a]
ins e [] = [e]
ins e (x:xs)
| e < x = e : x : xs
| otherwise = x : ins e xs

insSort :: (Ord a) => [a] -> [a]
insSort [] = []
insSort (x:xs) = ins x (insSort xs)

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
   let smallerOrEqual = [a | a <- xs, a <= x]
       larger = [a | a <- xs, a > x]
   in quicksort smallerOrEqual ++ [x] ++ quicksort larger


