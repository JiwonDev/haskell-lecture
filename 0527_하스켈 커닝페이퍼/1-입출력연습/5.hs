-- Fliter not divisible by 2 & 3
main :: IO ()
main = do
  let list = [x * 1 | x <- [1 .. 20], x `mod` 3 > 0 && x `mod` 2 > 0]
  print (list)